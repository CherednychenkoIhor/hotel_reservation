import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeService {
  HomeService({
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
  })  : _firestore = firestore,
        _storage = storage;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<List<String>> uploadPhotos(List<XFile> photos) async {
    List<String> uploadedPhotos = [];
    for (final photo in photos) {
      Reference reference = _storage.ref().child(
          "photos/${'${photo.name}_${DateTime.now().toIso8601String()}'}");
      Uint8List imageData = await photo.readAsBytes();
      TaskSnapshot uploadTask = await reference.putData(
          imageData, SettableMetadata(contentType: 'image/jpeg'));
      uploadedPhotos.add(await uploadTask.ref.getDownloadURL());
    }

    return uploadedPhotos;
  }

  Future<String> addApartment(Apartment apartment) async {
    final doc = _firestore.collection('apartments').doc();
    await doc.set(apartment.copyWith(apartmentId: doc.id).toJson());
    return doc.id;
  }
}
