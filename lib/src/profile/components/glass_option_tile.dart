import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GlassOptionTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const GlassOptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  State<GlassOptionTile> createState() => GlassOptionTileState();
}

class GlassOptionTileState extends State<GlassOptionTile> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final glassColor = GlassColors.backgroundwhite(
      Theme.of(context).brightness,
    );
    final glassBorder = GlassColors.goldborder(Theme.of(context).brightness);

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: _isPressed ? glassColor.withOpacity(0.5) : glassColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: glassBorder),
        ),
        child: Row(
          children: [
            Icon(widget.icon, color: theme.colorScheme.onSurface),
            SizedBox(width: 12),
            Text(widget.title, style: theme.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
