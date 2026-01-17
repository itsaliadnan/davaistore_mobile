import 'dart:io';

import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:davaistore_mobile/core/repo/signup_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signUpProvider = FutureProvider.family<UserModel, SignUpData>((
  ref,
  data,
) async {
  final repo = ref.watch(signUpRepositoryProvider);

  String? avatarUrl;
  if (data.avatarFile != null) {
    avatarUrl = 'https://api.lorem.space/image/face?w=640&h=480${data.email}';
  }

  return repo.signUp(
    email: data.email,
    name: data.name,
    password: data.password,
    avatar: avatarUrl,
  );
});

class SignUpData {
  final String email;
  final String name;
  final String password;
  final File? avatarFile;

  SignUpData({
    required this.email,
    required this.name,
    required this.password,
    this.avatarFile,
  });
}
