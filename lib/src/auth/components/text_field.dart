import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextFieldWidget extends HookWidget {
  final String hintText;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final obscure = useState(false);

    return Container(
      padding: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        gradient: AppGradients.twilightViolet, // التدرج هنا
        borderRadius: BorderRadius.circular(12),
      ),

      child: TextField(
        obscureText: obscure.value,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: context.colorScheme.onPrimary, // لون الخلفية
          suffixIcon: IconButton(
            icon: Icon(
              obscure.value ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              obscure.value = !obscure.value;
            },
          ),
          hintText: hintText,

          floatingLabelBehavior: FloatingLabelBehavior.never,
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500),
      ),
    );
  }
}
