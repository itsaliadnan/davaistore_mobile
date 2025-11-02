import 'package:davaistore_mobile/core/api/user_api.dart';
import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final api = ref.watch(userApiProvider);
  return UserRepository(api);
});

class UserRepository {
  final UserApi _api;

  UserRepository(this._api);

  Future<List<User>> getUsers() async {
    return await _api.getUsers();
  }
}
