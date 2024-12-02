import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/palette.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
            colors: [Palette.gradient1, Palette.gradient2, Palette.gradient3],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text("Sign in", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Palette.whiteColor)),
      ),
    );
  }
}
