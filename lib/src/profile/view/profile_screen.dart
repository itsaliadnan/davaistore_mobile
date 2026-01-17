import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/profile/components/glass_settings_tile.dart';
import 'package:davaistore_mobile/src/profile/components/language_bottomsheet.dart';
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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    Future.delayed(Duration(milliseconds: 200), () {
      _controller.forward();
    });
  }

  // Glassmorphic Card reusable
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
            gradient: GlassGradients.greyGradient.withOpacity(0.6),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // الخلفية العامة
          Container(
            decoration: BoxDecoration(
              gradient: GlassGradients.greyGradient.withOpacity(0.5),
            ),
          ),

          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //           colors: [
          //             Colors.white.withOpacity(0.15),
          //             Colors.white.withOpacity(0.05),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                // Avatar زجاجي
                glassCard(
                  radius: 100,
                  blur: 25,
                  opacity: 0.15,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/icons/profilePic.png'),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "John Doe",
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "johndoe@gmail.com",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),

                // زر Edit Profile زجاجي
                glassCard(
                  radius: 30,
                  blur: 25,
                  opacity: 0.12,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: Colors.black87),
                    label: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // قائمة الإعدادات
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
                          SizedBox(height: 15),
                          GlassSettingsTile(
                            icon: Icons.language,
                            title: "Language",
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () => showLanguageBottomSheet(context),
                          ),
                          GlassSettingsTile(
                            icon: Icons.dark_mode,
                            title: "Theme",
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () => showThemeBottomSheet(context, ref),
                          ),
                          GlassSettingsTile(
                            icon: Icons.notifications,
                            title: "Notifications",
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () {},
                          ),
                          GlassSettingsTile(
                            icon: Icons.lock,
                            title: "Privacy & Security",
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black87,
                            ),
                            onTap: () {},
                          ),
                          SizedBox(height: 20),
                          GlassSettingsTile(
                            icon: Icons.logout,
                            title: "Logout",
                            iconColor: Colors.redAccent,
                            titleColor: Colors.redAccent,
                            tileColor: Colors.redAccent.withOpacity(0.08),
                            onTap: () {
                              context.router.replace(const SignUpRoute());
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
