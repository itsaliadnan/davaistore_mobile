import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Carousel3D extends StatefulWidget {
  const Carousel3D({super.key});

  @override
  State<Carousel3D> createState() => _Carousel3DState();
}

class _Carousel3DState extends State<Carousel3D> {
  final PageController _pageController = PageController(viewportFraction: 0.6);
  int currentPage = 0;

  final List<String> items = [
    'assets/icons/bell.svg',
    'assets/icons/home.svg',
    'assets/icons/profile.svg',
    'assets/icons/shoes3.svg',
  ];

  final List<Color> colors = [
    AppColors.blue,
    AppColors.tosca,
    AppColors.orange,
    AppColors.success75,
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: PageView.builder(
        controller: _pageController,
        itemCount: items.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          double scale = currentPage == index ? 1.0 : 0.8; // الحجم
          double angle = currentPage == index ? 0 : 0.15; // الميلان

          return TweenAnimationBuilder(
            tween: Tween(begin: scale, end: scale),
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOut,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Transform.rotate(
                  angle: currentPage == index
                      ? 0
                      : (index < currentPage ? angle : -angle),
                  child: child,
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: BoxDecoration(
                color: colors[index % colors.length], // ✅ اللون لكل بطاقة
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SvgPicture.asset(items[index], fit: BoxFit.contain),
              ),
            ),
          );
        },
      ),
    );
  }
}
