import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appRouterProvider = Provider((ref) => AppRouter(ref: ref));

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  final Ref ref;

  AppRouter({super.navigatorKey, required this.ref});

  @override
  List<AutoRoute> get routes => [
    // صفحات خارج الـ NavBar (بدون BottomNav)
    AutoRoute(page: SignUpRoute.page),

    // الصفحات داخل الـ NavBar
    AutoRoute(
      page: NavBarRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: OrdersRoute.page, path: 'order'),
        AutoRoute(page: OrderDetailsRoute.page, path: 'orderDetails'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: NotificationsRoute.page, path: 'notifications'),
      ],
    ),
  ];

  @override
  RouteType get defaultRouteType => RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    duration: Duration(milliseconds: 300),
    reverseDuration: Duration(milliseconds: 300),
  );
}
