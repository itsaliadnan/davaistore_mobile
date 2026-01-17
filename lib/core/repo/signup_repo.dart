import 'package:davaistore_mobile/core/api/user_api.dart';
import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signUpRepositoryProvider = Provider<SignUpUserRepository>((ref) {
  final api = ref.watch(userApiProvider);
  return SignUpUserRepository(api);
});

class SignUpUserRepository {
  final UserApi _api;
  SignUpUserRepository(this._api);

  Future<UserModel> signUp({
    required String email,
    required String name,
    required String password,
    String? avatar,
  }) async {
    final body = {
      "email": email,
      "name": name,
      "password": password,
      "avatar":
          avatar ?? "https://api.lorem.space/image/face?w=640&h=480$email",
    };
    return _api.createUser(body);
  }
}
