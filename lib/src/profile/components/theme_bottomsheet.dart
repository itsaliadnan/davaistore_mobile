import 'package:davaistore_mobile/src/profile/components/glass_option_tile.dart';
import 'package:davaistore_mobile/src/shared/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showThemeBottomSheet(BuildContext context, WidgetRef ref) {
  final theme = Theme.of(context);

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.6,
      expand: false,
      builder: (_, controller) => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: theme.brightness == Brightness.dark
                ? [Colors.red, Colors.red.withOpacity(0.4)]
                : [
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.4),
                  ],
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),

        child: ListView(
          controller: controller,
          children: [
            Text(
              "Select Theme",
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            GlassOptionTile(
              icon: Icons.light_mode,
              title: "Light",
              onTap: () {
                ref.read(themeModeProvider.notifier).state = ThemeMode.light;
                Navigator.pop(context);
              },
            ),
            GlassOptionTile(
              icon: Icons.dark_mode,
              title: "Dark",
              onTap: () {
                ref.read(themeModeProvider.notifier).state = ThemeMode.dark;
                Navigator.pop(context);
              },
            ),
            GlassOptionTile(
              icon: Icons.brightness_auto,
              title: "System",
              onTap: () {
                ref.read(themeModeProvider.notifier).state = ThemeMode.system;
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
