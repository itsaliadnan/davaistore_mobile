import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/auth/controller/auth_controller.dart';
import 'package:davaistore_mobile/src/profile/components/glass_settings_tile.dart';
import 'package:davaistore_mobile/src/profile/components/language_bottomsheet.dart';
import 'package:davaistore_mobile/src/profile/components/notifications_bottomsheet.dart';
import 'package:davaistore_mobile/src/profile/components/theme_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  late Animation<Offset> _slide;
  bool notificationsEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    Future.delayed(const Duration(milliseconds: 200), () {
      _controller.forward();
    });
  }

  Widget glassCard({
    required Widget child,
    double radius = 20,
    double blur = 30,
    double opacity = 0.12,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.brandPrimary.withOpacity(0.9),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.2),
              width: 1.0,
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authState = ref.watch(authControllerProvider);

    String displayName = "John Doe";
    String displayEmail = "johndoe@gmail.com";
    String? avatarUrl;

    authState.whenData((user) {
      if (user != null) {
        displayName = user.displayName ?? displayName;
        displayEmail = user.email ?? displayEmail;
        avatarUrl = user.photoURL;
      }
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                glassCard(
                  radius: 100,
                  blur: 25,
                  opacity: 0.15,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: avatarUrl?.isNotEmpty == true
                        ? NetworkImage(avatarUrl!)
                        : const AssetImage('assets/icons/profilePic.png'),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  displayName,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  displayEmail,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                glassCard(
                  radius: 30,
                  blur: 25,
                  opacity: 0.12,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, color: Colors.black87),
                    label: const Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: FadeTransition(
                    opacity: _fade,
                    child: SlideTransition(
                      position: _slide,
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        children: [
                          Text(
                            "Settings",
                            style: theme.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 15),
                          GlassSettingsTile(
                            icon: Icons.language,
                            title: "Language",
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () => showLanguageBottomSheet(context),
                          ),
                          GlassSettingsTile(
                            icon: Icons.dark_mode,
                            title: "Theme",
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () => showThemeBottomSheet(context, ref),
                          ),
                          GlassSettingsTile(
                            icon: Icons.notifications,
                            title: "Notifications",
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () {
                              showReactiveNotificationsBottomSheet(
                                context,
                                notificationsEnabled: notificationsEnabled,
                                onChanged: (value) {
                                  setState(() => notificationsEnabled = value);
                                },
                              );
                            },
                          ),
                          GlassSettingsTile(
                            icon: Icons.lock,
                            title: "Privacy & Security",
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(height: 20),
                          GlassSettingsTile(
                            icon: Icons.logout,
                            title: "Logout",
                            iconColor: Colors.redAccent,
                            titleColor: Colors.redAccent,
                            tileColor: Colors.redAccent.withValues(alpha: 0.08),
                            onTap: () async {
                              await ref
                                  .read(authControllerProvider.notifier)
                                  .signOut();
                              if (!context.mounted) return;

                              context.router.replace(const LoginRoute());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
