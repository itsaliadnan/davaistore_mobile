import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:davaistore_mobile/core/services/auth_services.dart';
import 'package:davaistore_mobile/core/services/logger.dart';

class AuthController extends StateNotifier<AsyncValue<User?>> {
  final AuthService _authService;

  AuthController(this._authService) : super(const AsyncData(null));

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    try {
      logger.i("Starting signup for $email");

      final user = await _authService.signUpWithEmail(email, password);

      await user.updateDisplayName(name);
      await user.reload();

      final updatedUser = FirebaseAuth.instance.currentUser;

      await _authService.saveUserData(uid: user.uid, name: name, email: email);

      logger.i("Signup successful for ${user.uid}");
      state = AsyncData(updatedUser);
    } catch (e, st) {
      logger.e("Signup failed for $email", error: e, stackTrace: st);
      state = AsyncError(e, st);
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    state = const AsyncLoading();
    try {
      logger.i("Starting login for $email");
      final user = await _authService.signInWithEmail(email, password);
      logger.i("Login successful for ${user.uid}");
      state = AsyncData(user);
    } catch (e, st) {
      logger.e("Login failed for $email", error: e, stackTrace: st);
      state = AsyncError(e, st);
    }
  }

  Future<void> signOut() async {
    state = const AsyncLoading();
    try {
      await _authService.signOut();
      logger.i("User signed out");
      state = const AsyncData(null);
    } catch (e, st) {
      logger.e("Sign out failed", error: e, stackTrace: st);
      state = AsyncError(e, st);
    }
  }
}

final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<User?>>((ref) {
      final authService = AuthService();
      return AuthController(authService);
    });
