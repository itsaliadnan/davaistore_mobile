import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Profile screen implementation
    return Scaffold(
      appBar: AppBar(title: const Text('notifications')),
      body: const Center(child: Text('User  Notification Screen')),
    );
  }
}
