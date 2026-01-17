import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  // Glassmorphic Container
  Widget glassContainer({
    required Widget child,
    double radius = 20,
    double blur = 20,
    double opacity = 0.12,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(opacity),
                Colors.white.withOpacity(opacity * 0.5),
              ],
            ),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawerEnableOpenDragGesture: false,
      routes: [
        HomeRoute(),
        OrdersRoute(),
        NotificationsRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (_, child, __) => child,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FancyGlassNavItem(
                iconPath: 'assets/icons/home.svg',
                label: "Home",
                isActive: tabsRouter.activeIndex == 0,
                onTap: () => tabsRouter.setActiveIndex(0),
              ),
              FancyGlassNavItem(
                iconPath: 'assets/icons/search.svg',
                label: "Search",
                isActive: tabsRouter.activeIndex == 1,
                onTap: () => tabsRouter.setActiveIndex(1),
              ),
              FancyGlassNavItem(
                iconPath: 'assets/icons/bell.svg',
                label: "Alerts",
                isActive: tabsRouter.activeIndex == 2,
                onTap: () => tabsRouter.setActiveIndex(2),
                badgeCount: 5,
              ),
              FancyGlassNavItem(
                iconPath: 'assets/icons/user.svg',
                label: "Profile",
                isActive: tabsRouter.activeIndex == 3,
                onTap: () => tabsRouter.setActiveIndex(3),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// ------------------------------
/// Glassy Navigation Item
/// ------------------------------
class FancyGlassNavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final int? badgeCount;

  const FancyGlassNavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = SvgPicture.asset(
      iconPath,
      colorFilter: ColorFilter.mode(
        isActive ? Colors.black87 : Colors.black45,
        BlendMode.srcIn,
      ),
    );

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(isActive ? 0.15 : 0.08),
                  Colors.white.withOpacity(isActive ? 0.1 : 0.04),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    iconWidget,
                    if (badgeCount != null && badgeCount! > 0)
                      Positioned(
                        right: -6,
                        top: -6,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            badgeCount! > 99 ? '99+' : '$badgeCount',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    color: isActive ? Colors.black87 : Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
