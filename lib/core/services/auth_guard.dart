// import 'package:auto_route/auto_route.dart';
// import 'package:davaistore_mobile/core/router/app_router.gr.dart';
// import 'package:davaistore_mobile/src/auth/controller/auth_controller.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class AuthGuard extends AutoRouteGuard {
//   final Ref ref;
//   AuthGuard(this.ref);

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     final user = ref.read(authControllerProvider).asData?.value;

//     if (user != null) {
//       resolver.next(true); 
//     } else {
//       router.replace(const LoginRoute()); 
//     }
//   }
// }
