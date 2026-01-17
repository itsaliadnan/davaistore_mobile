import 'dart:ui';

import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GlassSettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? titleColor;
  final Color? tileColor;

  const GlassSettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.titleColor,
    this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final glassColor = GlassColors.backgroundwhite(
      Theme.of(context).brightness,
    );
    final glassBorder = GlassColors.borderwhite(Theme.of(context).brightness);

    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            gradient: GlassGradients.greyGradient.withOpacity(0.5),
            // color: tileColor ?? glassColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: glassBorder),
          ),
          child: ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: iconColor ?? theme.colorScheme.onSurface,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: titleColor ?? theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
