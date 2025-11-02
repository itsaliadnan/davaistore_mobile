import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordTextField extends HookWidget {
  final TextEditingController controller;
  final String hintText;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final obscure = useState(false);

    return TextField(
      controller: controller,
      obscureText: obscure.value,

      decoration: InputDecoration(
        filled: true,
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return AppColors.white;
          }
          return AppColors.white;
        }),
        suffixIcon: IconButton(
          icon: Icon(
            obscure.value ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            obscure.value = !obscure.value;
          },
        ),
        hintText: 'enter your Password',

        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: context.colors.primary, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.primary, width: 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500),
    );
  }
}
