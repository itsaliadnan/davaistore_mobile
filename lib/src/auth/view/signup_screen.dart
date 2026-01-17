import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:davaistore_mobile/core/provider/local_storage_provider.dart';
import 'package:davaistore_mobile/core/repo/user_repo.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/auth/components/password_field.dart';
import 'package:davaistore_mobile/src/auth/components/signup_button.dart';
import 'package:davaistore_mobile/src/auth/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: 'john');
    final emailController = useTextEditingController(text: 'john@gmail.com');
    final passwordController = useTextEditingController(text: 'm38rmF\$');
    final pickedImage = useState<File?>(null);

    Future<void> pickImage() async {
      final picker = ImagePicker();
      final picked = await picker.pickImage(source: ImageSource.gallery);
      if (picked != null) {
        pickedImage.value = File(picked.path);
      }
    }

    return Scaffold(
      backgroundColor: context.colorScheme.onPrimary,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                right: 80,
                child: SvgPicture.asset('assets/icons/Circle.svg'),
              ),
              Positioned(
                top: 50,
                right: 0,
                child: SvgPicture.asset('assets/icons/Rectangle.svg'),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: context.colorScheme.primary,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Fill this form below to create your account',
                          style: TextStyle(
                            color: context.colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: pickImage,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: pickedImage.value != null
                              ? FileImage(pickedImage.value!)
                              : null,
                          child: pickedImage.value == null
                              ? const Icon(Icons.add_a_photo, size: 40)
                              : null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFieldWidget(
                        hintText: 'Enter your full name',
                        controller: nameController,
                      ),
                      const SizedBox(height: 12),
                      TextFieldWidget(
                        hintText: 'Enter your email',
                        controller: emailController,
                      ),
                      const SizedBox(height: 12),
                      PasswordTextField(
                        controller: passwordController,
                        hintText: 'Enter your password',
                      ),
                      const SizedBox(height: 20),
                      SignUpButton(
                        onPressed: () async {
                          final name = nameController.text.trim();
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();

                          if (name.isEmpty ||
                              email.isEmpty ||
                              password.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please fill all text fields'),
                              ),
                            );
                            return;
                          }

                          if (pickedImage.value == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please select a profile image'),
                              ),
                            );
                            return;
                          }

                          try {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (_) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );

                            final avatarUrl =
                                "https://api.lorem.space/image/face?w=640&h=480&email=$email";

                            final localStorage = ref.read(localStorageProvider);
                            await localStorage.saveAvatarUrl(avatarUrl);

                            final users = await ref
                                .read(userRepositoryProvider)
                                .getUsers();

                            UserModel? matchedUser;
                            try {
                              matchedUser = users.firstWhere(
                                (u) =>
                                    u.email == email && u.password == password,
                              );
                            } catch (_) {
                              matchedUser = null;
                            }

                            Navigator.of(context).pop();

                            if (matchedUser != null) {
                              ref.read(loggedInStateProvider.notifier).login();

                              context.router.replace(HomeRoute());
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Email or password is incorrect',
                                  ),
                                ),
                              );
                            }
                          } catch (e, stack) {
                            Navigator.of(context).pop();
                            debugPrint("Sign in failed: $e");
                            debugPrint("Stack: $stack");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign in failed: $e')),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
