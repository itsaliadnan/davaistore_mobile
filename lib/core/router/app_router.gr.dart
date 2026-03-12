// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:davaistore_mobile/core/model/order_model.dart' as _i13;
import 'package:davaistore_mobile/core/services/warpper.dart' as _i10;
import 'package:davaistore_mobile/src/auth/view/login_screen.dart' as _i3;
import 'package:davaistore_mobile/src/auth/view/signup_screen.dart' as _i9;
import 'package:davaistore_mobile/src/home/view/home_screen.dart' as _i2;
import 'package:davaistore_mobile/src/navigation/nav_item.dart' as _i4;
import 'package:davaistore_mobile/src/notifications/view/notifications_screen.dart'
    as _i5;
import 'package:davaistore_mobile/src/order/view/order_details_screen.dart'
    as _i6;
import 'package:davaistore_mobile/src/order/view/order_screen.dart' as _i7;
import 'package:davaistore_mobile/src/products/view/add_product_screen.dart'
    as _i1;
import 'package:davaistore_mobile/src/profile/view/profile_screen.dart' as _i8;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.AddProductScreen]
class AddProductRoute extends _i11.PageRouteInfo<void> {
  const AddProductRoute({List<_i11.PageRouteInfo>? children})
    : super(AddProductRoute.name, initialChildren: children);

  static const String name = 'AddProductRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddProductScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.NavBarScreen]
class NavBarRoute extends _i11.PageRouteInfo<void> {
  const NavBarRoute({List<_i11.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.NavBarScreen();
    },
  );
}

/// generated route for
/// [_i5.NotificationsScreen]
class NotificationsRoute extends _i11.PageRouteInfo<void> {
  const NotificationsRoute({List<_i11.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i6.OrderDetailsScreen]
class OrderDetailsRoute extends _i11.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i12.Key? key,
    required _i13.OrderModel order,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         OrderDetailsRoute.name,
         args: OrderDetailsRouteArgs(key: key, order: order),
         initialChildren: children,
       );

  static const String name = 'OrderDetailsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailsRouteArgs>();
      return _i6.OrderDetailsScreen(key: args.key, order: args.order);
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.order});

  final _i12.Key? key;

  final _i13.OrderModel order;

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
/// [_i7.OrdersScreen]
class OrdersRoute extends _i11.PageRouteInfo<OrdersRouteArgs> {
  OrdersRoute({_i12.Key? key, List<_i11.PageRouteInfo>? children})
    : super(
        OrdersRoute.name,
        args: OrdersRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OrdersRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrdersRouteArgs>(
        orElse: () => const OrdersRouteArgs(),
      );
      return _i7.OrdersScreen(key: args.key);
    },
  );
}

class OrdersRouteArgs {
  const OrdersRouteArgs({this.key});

  final _i12.Key? key;

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
/// [_i8.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i9.SignUpScreen]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i10.SplashWrapperScreen]
class SplashWrapperRoute extends _i11.PageRouteInfo<void> {
  const SplashWrapperRoute({List<_i11.PageRouteInfo>? children})
    : super(SplashWrapperRoute.name, initialChildren: children);

  static const String name = 'SplashWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashWrapperScreen();
    },
  );
}
