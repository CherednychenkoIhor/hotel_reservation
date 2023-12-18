import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/core/models/reservation.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewReservationRepository {
  NewReservationRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Apartment>> fetchApartments({
    int? minRooms,
    int? maxRooms,
    double? minPrice,
    double? maxPrice,
    String? name,
  }) async {
    final List<Apartment> apartments = [];
    final ref = _firestore.collection('apartments');
    final apartmentsJson = await ref.get();
    for (final document in apartmentsJson.docs) {
      apartments.add(Apartment.fromJson(document.data()));
    }

    return apartments;
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
