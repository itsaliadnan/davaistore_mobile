import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:davaistore_mobile/core/repo/user_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersProvider = FutureProvider<List<UserModel>>((ref) async {
  final repo = ref.watch(userRepositoryProvider);
  return repo.getUsers();
});
final usersPostProvider = FutureProvider<UserModel>((ref) async {
  final repo = ref.watch(userRepositoryProvider);
  return repo.createUser({'name': 'user', 'email': 'user@example.com'});
});
