import 'dart:ui';

import 'package:davaistore_mobile/src/profile/components/glass_option_tile.dart';
import 'package:flutter/material.dart';

void showLanguageBottomSheet(BuildContext context) {
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
          color: theme.brightness == Brightness.dark
              ? Colors.white.withOpacity(0.06)
              : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: ListView(
          controller: controller,
          children: [
            Text(
              "Select Language",
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            GlassOptionTile(
              icon: Icons.language,
              title: "English",
              onTap: () {
                // تغيير اللغة للإنجليزية
                Navigator.pop(context);
              },
            ),
            GlassOptionTile(
              icon: Icons.language,
              title: "العربية",
              onTap: () {
                // تغيير اللغة للعربية
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
