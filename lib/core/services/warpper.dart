import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/src/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashWrapperScreen extends ConsumerWidget {
  const SplashWrapperScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);

    // لاحظ: نقوم بالتوجيه وليس إرجاع Route مباشرة
    authState.when(
      data: (user) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (user != null) {
            context.router.replaceAll([const NavBarRoute()]);
          } else {
            context.router.replaceAll([const LoginRoute()]);
          }
        });
      },
      loading: () {},
      error: (_, __) {},
    );

    // عرض شاشة انتظار أثناء الانتظار أو التوجيه
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
