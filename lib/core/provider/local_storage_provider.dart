import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = FutureProvider(
  (ref) => SharedPreferences.getInstance(),
);
final localStorageProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService(
    sharedPreferences: ref.read(sharedPreferencesProvider).requireValue,
  );
});

class LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});

  Future<void> saveAvatarUrl(String url) async {
    await sharedPreferences.setString('avatar_url', url);
  }

  String? getAvatarUrl() {
    return sharedPreferences.getString('avatar_url');
  }

  Future<void> clearAvatarUrl() async {
    await sharedPreferences.remove('avatar_url');
  }
}
