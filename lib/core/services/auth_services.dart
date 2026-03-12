import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:davaistore_mobile/core/services/logger.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthService({
    FirebaseAuth? auth,
    FirebaseFirestore? firestore,
    FirebaseStorage? storage,
  }) : _auth = auth ?? FirebaseAuth.instance,
       _firestore = firestore ?? FirebaseFirestore.instance,
       _storage = storage ?? FirebaseStorage.instance;

  Future<User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        throw Exception("Google sign in aborted");
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);

      final user = userCredential.user!;
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // تسجيل مستخدم جديد
  Future<User> signUpWithEmail(String email, String password) async {
    try {
      logger.i("Attempting signup for $email");

      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;
      if (user == null) throw Exception('User is null after registration');

      logger.i("Signup successful for ${user.uid}");
      return user;
    } on FirebaseAuthException catch (e, st) {
      logger.e("Signup failed for $email", error: e, stackTrace: st);
      rethrow;
    } catch (e, st) {
      logger.e(
        "Unexpected error during signup for $email",
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }

  // تسجيل الدخول
  Future<User> signInWithEmail(String email, String password) async {
    try {
      logger.i("Attempting login for $email");

      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;
      if (user == null) throw Exception('User is null after login');

      logger.i("Login successful for ${user.uid}");
      return user;
    } on FirebaseAuthException catch (e, st) {
      logger.e("Login failed for $email", error: e, stackTrace: st);
      rethrow;
    } catch (e, st) {
      logger.e(
        "Unexpected error during login for $email",
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }

  // تسجيل الخروج

  Future<void> signOut() async {
    try {
      logger.i("Signing out user");

      await _googleSignIn.signOut(); // تسجيل الخروج من غوغل
      await _auth.signOut(); // تسجيل الخروج من فايربيس

      logger.i("User signed out successfully");
    } catch (e, st) {
      logger.e("Sign out failed", error: e, stackTrace: st);
      rethrow;
    }
  }

  // مراقبة حالة الدخول
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // رفع صورة البروفايل
  Future<String> uploadProfileImage(File image, String uid) async {
    try {
      logger.i("Uploading profile image for $uid");

      final ref = _storage.ref().child('users/$uid/profile.jpg');
      await ref.putFile(image);

      final url = await ref.getDownloadURL();
      logger.i("Profile image uploaded for $uid");
      return url;
    } catch (e, st) {
      logger.e(
        "Failed to upload profile image for $uid",
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }

  // حفظ بيانات المستخدم في Firestore
  Future<void> saveUserData({
    required String uid,
    required String name,
    required String email,
    // required String avatarUrl,
  }) async {
    try {
      logger.i("Saving user data for $uid");

      await _firestore.collection('users').doc(uid).set({
        'name': name,
        'email': email,
        // 'profileImage': avatarUrl,
        'createdAt': FieldValue.serverTimestamp(),
      });

      logger.i("User data saved for $uid");
    } catch (e, st) {
      logger.e("Failed to save user data for $uid", error: e, stackTrace: st);
      rethrow;
    }
  }
}
