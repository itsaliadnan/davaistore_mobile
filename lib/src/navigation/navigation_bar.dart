// import 'package:auto_route/auto_route.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:davaistore_mobile/core/router/app_router.gr.dart';
// import 'package:davaistore_mobile/core/theme/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// @RoutePage()
// class NavBarScreen extends StatelessWidget {
//   const NavBarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsScaffold(
//       routes: [
//         HomeRoute(),
//         const SearchRoute(),
//         const NotificationsRoute(),
//         const ProfileRoute(),
//       ],
//       bottomNavigationBuilder: (_, tabsRouter) {
//         return ConvexAppBar(
//           style: TabStyle.react,
//           backgroundColor: Colors.white,
//           color: Colors.grey,
//           activeColor: Colors.blue,
//           initialActiveIndex: tabsRouter.activeIndex,
//           onTap: tabsRouter.setActiveIndex,
//           items: [
//             TabItem(
//               icon: SvgPicture.asset(
//                 'assets/icons/home.svg',
//                 color: context.colorScheme.onPrimary,
//               ),
//               title: 'Home',
//             ),
//             TabItem(
//               icon: SvgPicture.asset('assets/icons/search.svg'),
//               title: 'Search',
//             ),
//             TabItem(
//               icon: SvgPicture.asset('assets/icons/bell.svg'),
//               title: 'Alerts',
//             ),
//             TabItem(
//               icon: SvgPicture.asset('assets/icons/user.svg'),
//               title: 'Profile',
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
