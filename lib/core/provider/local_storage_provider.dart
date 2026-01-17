import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final localStorageProvider = Provider<LocalStorageService>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return LocalStorageService(sharedPreferences: prefs);
});

class LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});

  Future<void> setLoggedIn(bool value) async {
    await sharedPreferences.setBool('logged_in', value);
  }

  Future<void> saveAvatarUrl(String url) async {
    await sharedPreferences.setString('avatar_url', url);
  }

  String? getAvatarUrl() {
    return sharedPreferences.getString('avatar_url');
  }

  bool isLoggedIn() => sharedPreferences.getBool('logged_in') ?? false;
}

final loggedInStateProvider = StateNotifierProvider<AuthStateNotifier, bool>((
  ref,
) {
  final storage = ref.watch(localStorageProvider);
  return AuthStateNotifier(storage);
});

class AuthStateNotifier extends StateNotifier<bool> {
  final LocalStorageService storage;

  AuthStateNotifier(this.storage) : super(storage.isLoggedIn());

  Future<void> login() async {
    await storage.setLoggedIn(true);
    state = true;
  }

  Future<void> logout() async {
    await storage.setLoggedIn(false);
    state = false;
  }
}
