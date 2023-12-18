import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/core/models/reservation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class YourReservationRepository {
  YourReservationRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Apartment>> fetchApartments({
    required List<String> apartmentsList,
  }) async {
    final List<Apartment> apartments = [];

    for (final apartment in apartmentsList) {
      final ref = _firestore.collection('reservations').doc(apartment);
      final apartmentsJson = await ref.get();
      final doc = await _firestore
          .collection('apartments')
          .doc(apartmentsJson.data()!['apartmentId'])
          .get();
      apartments.add(Apartment.fromJson(doc.data()!));
    }

    return apartments;
  }

  Future<void> cancelReservationApartments({
    required String reservationId,
  }) async {
    final ref = _firestore.collection('reservations').doc(reservationId);
    final apartmentsJson = await ref.get();
    final refApart = await _firestore
        .collection('apartments')
        .doc(apartmentsJson.data()!['apartmentId']);
    final reservation = Reservation.fromJson(apartmentsJson.data()!);

    final doc = await refApart.get();
    final apart = Apartment.fromJson(doc.data()!);
    final selectDays = [...apart.selectedDays];
    selectDays.removeWhere((element) {
      for (final date in reservation.selectedDays) {
        if (DateFormat.yMMMd().format(element) ==
            DateFormat.yMMMd().format(date)) {
          return true;
        }
      }
      return false;
    });
    refApart.update(apart.copyWith(selectedDays: selectDays).toJson());
  }

  Future<String> reserveApartments({
    required Reservation reservation,
  }) async {
    final doc = _firestore.collection('reservations').doc();
    await doc.set(reservation.toJson());
    final ref =
        _firestore.collection('apartments').doc(reservation.apartmentId);
    final apartmentsJson = await ref.get();

    if (apartmentsJson.data() != null) {
      final apartment = Apartment.fromJson(apartmentsJson.data()!);
      ref.update(apartment.copyWith(selectedDays: [
        ...apartment.selectedDays,
        ...reservation.selectedDays
      ]).toJson());
    }

    return doc.id;
  }
}
