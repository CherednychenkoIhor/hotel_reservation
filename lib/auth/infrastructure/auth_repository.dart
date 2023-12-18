import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:hotel_reservation/core/models/hr_user.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore;

  Future<HrUser?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // Once signed in, return the UserCredential
    final UserCredential firebaseUser =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final User? createdUser = firebaseUser.user;

    if (createdUser != null) {
      HrUser user = HrUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        name: createdUser.displayName ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });

        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return HrUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }

  Future<HrUser?> createUserWithEmailAndPassword({
    required String email,
    required String userName,
    required String password,
  }) async {
    final UserCredential firebaseUser =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final User? createdUser = firebaseUser.user;

    if (createdUser != null) {
      HrUser user = HrUser(
        id: createdUser.uid,
        email: email,
        name: userName,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _firestore.collection("users").doc(user.id).set(user.toJson());

      return user;
    }
    return null;
    // Once signed in, return the UserCredential
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> updateUser(HrUser user) async {
    await _firestore.collection("users").doc(user.id).set(user.toJson());
  }

  Future<HrUser?> getCurrentUser() async {
    final User? createdUser = _firebaseAuth.currentUser;

    if (createdUser != null) {
      HrUser user = HrUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        name: createdUser.displayName ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });
        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return HrUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }

  Future<HrUser?> signInWithGoogle() async {
    await _firebaseAuth.signOut();
    // Trigger the authentication flow

    final _signIn = GoogleSignInPlugin();
    _signIn.init();
    _signIn.signOut();
    print('googleUser');
    print(_signIn.autoDetectedClientId);
    final googleUser = await _signIn.signInSilently();

    // Obtain the auth details from the request
    // final GoogleSignInAuthentication? googleAuth =
    //     await googleUser?.serverAuthCode;
    print('googleUser');
    print(googleUser?.email);

    final credentials = await _signIn.getTokens(email: googleUser?.email ?? '');

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: credentials.accessToken,
      idToken: credentials.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential firebaseUser =
        await _firebaseAuth.signInWithCredential(credential);

    final User? createdUser = firebaseUser.user;
    print('createdUser');
    print(createdUser);
    if (createdUser != null) {
      HrUser user = HrUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        name: createdUser.displayName ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });
        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return HrUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }
}
