import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:davaistore_mobile/core/repo/user_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersProvider = FutureProvider<List<User>>((ref) async {
  final repo = ref.watch(userRepositoryProvider);
  return repo.getUsers();
});
