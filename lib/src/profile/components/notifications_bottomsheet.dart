import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/src/profile/components/glass_option_tile.dart';
import 'package:flutter/material.dart';

void showReactiveNotificationsBottomSheet(
  BuildContext context, {
  required bool notificationsEnabled,
  required void Function(bool) onChanged,
}) {
  final theme = Theme.of(context);

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => StatefulBuilder(
      builder: (context, setSheetState) {
        return Container(
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
                "Notifications",
                style: theme.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              GlassOptionTile(
                icon: notificationsEnabled
                    ? Icons.notifications_active
                    : Icons.notifications_off,

                onTap: () {
                  setSheetState(() {
                    notificationsEnabled = !notificationsEnabled;
                  });
                  onChanged(notificationsEnabled);
                },
              ),

              const SizedBox(height: 16),

              // الخيارات الفردية
              GlassOptionTile(
                icon: Icons.notifications_active,
                title: "Enable Notifications",

                onTap: () {
                  setSheetState(() {
                    notificationsEnabled = true;
                  });
                  onChanged(true);
                },
              ),

              GlassOptionTile(
                icon: Icons.notifications_off,
                title: "Disable Notifications",

                onTap: () {
                  setSheetState(() {
                    notificationsEnabled = false;
                  });
                  onChanged(false);
                },
              ),
            ],
          ),
        );
      },
    ),
  );
}
