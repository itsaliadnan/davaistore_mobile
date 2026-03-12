import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignatureNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const SignatureNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,

        // margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(22),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.08),
          //     blurRadius: 20,
          //     offset: const Offset(0, 10),
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _item('assets/icons/home.svg', 0),
            _item('assets/icons/shipping.svg', 1),
            _item('assets/icons/bell.svg', 2),
            _item('assets/icons/user.svg', 3),
          ],
        ),
      ),
    );
  }

  Widget _item(String icon, int index) {
    final bool active = currentIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: active
              ? Colors.black.withValues(alpha: 0.08)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(
          icon,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            active ? Colors.black : Colors.black45,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
