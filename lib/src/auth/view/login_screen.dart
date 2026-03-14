import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/services/auth_services.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/localization/strings.g.dart';
import 'package:davaistore_mobile/src/auth/components/signup_button.dart';
import 'package:davaistore_mobile/src/auth/components/text_field.dart';
import 'package:davaistore_mobile/src/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: context.colorScheme.onPrimary,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              reverse: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
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
                            child: SvgPicture.asset(
                              'assets/icons/Rectangle.svg',
                            ),
                          ),
                          SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                ),
                                // const SizedBox(height: 250),
                                Text(
                                  context.t.auth.davaiStore,
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: context.colorScheme.onSurface,
                                  ),
                                ),
                                SizedBox(height: 30),
                                // Text(
                                //   'Enter your credentials to access your account',
                                //   style: TextStyle(
                                //     fontSize: 16,
                                //     color: context.colorScheme.onSurface,
                                //     fontWeight: FontWeight.w300,
                                //   ),
                                // ),
                                TextFieldWidget(
                                  controller: emailController,
                                  hintText: context.t.auth.enterYourEmail,
                                ),
                                const SizedBox(height: 12),
                                TextFieldWidget(
                                  controller: passwordController,
                                  hintText: context.t.auth.enterYourPassword,
                                ),
                                const SizedBox(height: 20),
                                if (authState is AsyncLoading)
                                  const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                SignUpButton(
                                  onPressed: () async {
                                    final email = emailController.text.trim();
                                    final password = passwordController.text
                                        .trim();

                                    if (email.isEmpty || password.isEmpty) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            context
                                                .t
                                                .auth
                                                .pleaseFillAllTextFields,
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    await ref
                                        .read(authControllerProvider.notifier)
                                        .signIn(
                                          email: email,
                                          password: password,
                                        );

                                    ref
                                        .read(authControllerProvider)
                                        .when(
                                          data: (user) {
                                            if (user != null) {
                                              context.router.replace(
                                                const NavBarRoute(),
                                              );
                                            }
                                          },
                                          loading: () {},
                                          error: (e, st) =>
                                              ScaffoldMessenger.of(
                                                context,
                                              ).showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Login failed: $e',
                                                  ),
                                                ),
                                              ),
                                        );
                                  },
                                ),

                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: context.colorScheme.onSurface
                                            .withValues(alpha: 0.5),
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      child: Text(
                                        "أو",
                                        style: TextStyle(
                                          color: context.colorScheme.onSurface
                                              .withValues(alpha: 0.7),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: context.colorScheme.onSurface
                                            .withValues(alpha: 0.5),
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: AppGradients.deepSea,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor:
                                          context.colorScheme.surface,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 0,
                                    ),
                                    onPressed: () async {
                                      final user = await AuthService()
                                          .signInWithGoogle();

                                      if (!context.mounted) return;
                                      context.router.replace(
                                        const NavBarRoute(),
                                      );
                                    },

                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/google_icon.svg',
                                          height: 20,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(context.t.auth.signupWithGoogle),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.t.auth.dontHaveAnAccount,
                          style: TextStyle(
                            color: context.colorScheme.onSurface,
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () =>
                              context.router.push(const SignUpRoute()),
                          child: Text(
                            context.t.auth.signUp,
                            style: TextStyle(
                              color: context.colorScheme.onSurface,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
