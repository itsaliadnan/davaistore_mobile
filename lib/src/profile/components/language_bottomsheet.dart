import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/profile/components/glass_option_tile.dart';
import 'package:flutter/material.dart';

void showLanguageBottomSheet(BuildContext context) {
  final theme = Theme.of(context);

  showModalBottomSheet(
    context: context,
    builder: (_) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: AppGradients.luxuryGold,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Wrap(
        children: [
          Text(
            "Select Language",
            style: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          GlassOptionTile(
            icon: Icons.language,
            title: "English",
            onTap: () => Navigator.pop(context),
          ),
          GlassOptionTile(
            icon: Icons.language,
            title: "العربية",
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}
