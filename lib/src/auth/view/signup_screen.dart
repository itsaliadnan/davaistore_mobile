import 'dart:io';

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

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final pickedImage = useState<File?>(null);

    Future<void> pickImage() async {
      final picker = ImagePicker();
      final picked = await picker.pickImage(source: ImageSource.gallery);
      if (picked != null) {
        pickedImage.value = File(picked.path);
      }
    }

    return Scaffold(
      backgroundColor: context.colors.onPrimary,
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
                            color: context.colors.primary,
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
                            color: context.colors.primary,
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

                      // الحقول
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

                            // final avatarUrl =
                            //     'await uploadAvatar(pickedImage.value!$email);';

                            // final localStorage = ref.read(localStorageProvider);
                            // await localStorage.saveAvatarUrl(avatarUrl);

                            // await ref
                            //     .read(signUpRepositoryProvider)
                            //     .signUp(
                            //       email: email,
                            //       name: name,
                            //       password: password,
                            //       avatar: avatarUrl,
                            //     );

                            Navigator.of(context).pop();
                            context.go('/home');
                          } catch (e) {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign up failed: $e')),
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
