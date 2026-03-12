import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/src/navigation/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';

@RoutePage()
class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        OrdersRoute(),
        const NotificationsRoute(),
        const ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: SignatureNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
