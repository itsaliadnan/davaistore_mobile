import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final _screens = [HomeScreen(), Placeholder(), Placeholder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: context.colors.surface),
        child: SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          selectedItemColor: context.colors.onPrimary,
          unselectedItemColor: context.colors.onPrimary,
          items: [
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
              title: Text('context'),
              selectedColor: context.colors.onSurface,
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
              title: Text('title'),
              selectedColor: context.colors.onSurface,
              activeIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bell.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
              title: Text('context'),
              selectedColor: context.colors.onSurface,
              unselectedColor: context.colors.error,
              activeIcon: SvgPicture.asset(
                'assets/icons/bell.svg',
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
