import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/localization/strings.g.dart';
import 'package:davaistore_mobile/src/auth/components/password_field.dart';
import 'package:davaistore_mobile/src/auth/components/signup_button.dart';
import 'package:davaistore_mobile/src/auth/components/text_field.dart';
import 'package:davaistore_mobile/src/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final pickedImage = useState<File?>(null);

    // Future<void> pickImage() async {
    //   final picker = ImagePicker();
    //   final picked = await picker.pickImage(source: ImageSource.gallery);
    //   if (picked != null) pickedImage.value = File(picked.path);
    // }

    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      backgroundColor: context.colorScheme.onPrimary,
      body: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Text(
                        context.t.auth.signUp,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        context.t.auth.fillThisFormToCreateAnAccount,
                        style: TextStyle(
                          fontSize: 16,
                          color: context.colorScheme.onSurface,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 30),
                      // GestureDetector(
                      //   onTap: pickImage,
                      //   child: CircleAvatar(
                      //     radius: 50,
                      //     backgroundImage: pickedImage.value != null
                      //         ? FileImage(pickedImage.value!)
                      //         : null,
                      //     child: pickedImage.value == null
                      //         ? const Icon(Icons.add_a_photo, size: 40)
                      //         : null,
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      TextFieldWidget(
                        controller: nameController,
                        hintText: context.t.auth.enterYourFullName,
                      ),
                      const SizedBox(height: 12),
                      TextFieldWidget(
                        controller: emailController,
                        hintText: context.t.auth.enterYourEmail,
                      ),
                      const SizedBox(height: 12),
                      PasswordTextField(
                        controller: passwordController,
                        hintText: context.t.auth.enterYourPassword,
                      ),
                      const SizedBox(height: 20),
                      if (authState is AsyncLoading)
                        const Center(child: CircularProgressIndicator()),
                      SignUpButton(
                        onPressed: () async {
                          final name = nameController.text.trim();
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();

                          if (name.isEmpty ||
                              email.isEmpty ||
                              password.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  context.t.auth.pleaseFillAllTextFields,
                                ),
                              ),
                            );
                            return;
                          }
                          if (pickedImage.value == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  context.t.auth.pleaseSelectAProfilePicture,
                                ),
                              ),
                            );
                            return;
                          }

                          await ref
                              .read(authControllerProvider.notifier)
                              .signUp(
                                name: name,
                                email: email,
                                password: password,
                                // profileImage: pickedImage.value!,
                              );

                          ref
                              .read(authControllerProvider)
                              .when(
                                data: (user) {
                                  if (user != null) {
                                    context.router.replace(const NavBarRoute());
                                  }
                                },
                                loading: () {},
                                error: (e, st) =>
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Signup : $e')),
                                    ),
                              );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.t.auth.alreadyHaveAnAccount,
                            style: TextStyle(
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                          TextButton(
                            onPressed: () =>
                                context.router.replace(const LoginRoute()),
                            child: Text(
                              context.t.auth.login,
                              style: TextStyle(
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
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
