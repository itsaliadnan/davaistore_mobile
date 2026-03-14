// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:davaistore_mobile/core/model/order_model.dart' as _i14;
import 'package:davaistore_mobile/core/services/warpper.dart' as _i11;
import 'package:davaistore_mobile/src/all_products/view/all_products_page.dart'
    as _i2;
import 'package:davaistore_mobile/src/auth/view/login_screen.dart' as _i4;
import 'package:davaistore_mobile/src/auth/view/signup_screen.dart' as _i10;
import 'package:davaistore_mobile/src/home/view/home_screen.dart' as _i3;
import 'package:davaistore_mobile/src/navigation/nav_item.dart' as _i5;
import 'package:davaistore_mobile/src/notifications/view/notifications_screen.dart'
    as _i6;
import 'package:davaistore_mobile/src/order/view/order_details_screen.dart'
    as _i7;
import 'package:davaistore_mobile/src/order/view/order_screen.dart' as _i8;
import 'package:davaistore_mobile/src/add_prodects/view/add_product_screen.dart'
    as _i1;
import 'package:davaistore_mobile/src/profile/view/profile_screen.dart' as _i9;
import 'package:flutter/material.dart' as _i13;

/// generated route for
/// [_i1.AddProductScreen]
class AddProductRoute extends _i12.PageRouteInfo<void> {
  const AddProductRoute({List<_i12.PageRouteInfo>? children})
    : super(AddProductRoute.name, initialChildren: children);

  static const String name = 'AddProductRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddProductScreen();
    },
  );
}

/// generated route for
/// [_i2.AllProductsScreen]
class AllProductsRoute extends _i12.PageRouteInfo<void> {
  const AllProductsRoute({List<_i12.PageRouteInfo>? children})
    : super(AllProductsRoute.name, initialChildren: children);

  static const String name = 'AllProductsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.AllProductsScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.NavBarScreen]
class NavBarRoute extends _i12.PageRouteInfo<void> {
  const NavBarRoute({List<_i12.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavBarScreen();
    },
  );
}

/// generated route for
/// [_i6.NotificationsScreen]
class NotificationsRoute extends _i12.PageRouteInfo<void> {
  const NotificationsRoute({List<_i12.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i7.OrderDetailsScreen]
class OrderDetailsRoute extends _i12.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i13.Key? key,
    required _i14.OrderModel order,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         OrderDetailsRoute.name,
         args: OrderDetailsRouteArgs(key: key, order: order),
         initialChildren: children,
       );

  static const String name = 'OrderDetailsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailsRouteArgs>();
      return _i7.OrderDetailsScreen(key: args.key, order: args.order);
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.order});

  final _i13.Key? key;

  final _i14.OrderModel order;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, order: $order}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailsRouteArgs) return false;
    return key == other.key && order == other.order;
  }

  @override
  int get hashCode => key.hashCode ^ order.hashCode;
}

/// generated route for
/// [_i8.OrdersScreen]
class OrdersRoute extends _i12.PageRouteInfo<OrdersRouteArgs> {
  OrdersRoute({_i13.Key? key, List<_i12.PageRouteInfo>? children})
    : super(
        OrdersRoute.name,
        args: OrdersRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OrdersRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrdersRouteArgs>(
        orElse: () => const OrdersRouteArgs(),
      );
      return _i8.OrdersScreen(key: args.key);
    },
  );
}

class OrdersRouteArgs {
  const OrdersRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'OrdersRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrdersRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i10.SignUpScreen]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute({List<_i12.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i11.SplashWrapperScreen]
class SplashWrapperRoute extends _i12.PageRouteInfo<void> {
  const SplashWrapperRoute({List<_i12.PageRouteInfo>? children})
    : super(SplashWrapperRoute.name, initialChildren: children);

  static const String name = 'SplashWrapperRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashWrapperScreen();
    },
  );
}
