import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/palette.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder:
              OutlineInputBorder(borderSide: const BorderSide(width: 3, color: Palette.borderColor), borderRadius: BorderRadius.circular(10)),
          focusedBorder:
              OutlineInputBorder(borderSide: const BorderSide(width: 3, color: Palette.gradient2), borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
        ),
      ),
    );
  }
}
