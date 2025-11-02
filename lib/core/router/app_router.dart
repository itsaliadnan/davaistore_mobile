import 'package:davaistore_mobile/src/auth/view/signup_screen.dart';
import 'package:davaistore_mobile/src/home/view/home_screen.dart';
import 'package:davaistore_mobile/src/navigation/navigation_bar.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/signup',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return NavBar();
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
      ],
    ),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    // GoRoute(
    //   path: '/profile',
    //   builder: (context, state) => const ProfileScreen(),
    // ),
  ],
);
