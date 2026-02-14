import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/profile/components/glass_option_tile.dart';
import 'package:davaistore_mobile/src/shared/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showThemeBottomSheet(BuildContext context, WidgetRef ref) {
  final theme = Theme.of(context);

  showModalBottomSheet(
    context: context,
    builder: (_) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: AppGradients.luxuryGold,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Theme",
            style: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

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
  );
}
