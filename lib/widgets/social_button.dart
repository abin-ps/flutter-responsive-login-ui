import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontalPadding = 100});
  final String iconPath;
  final String label;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(iconPath, width: 25, colorFilter: const ColorFilter.mode(Palette.whiteColor, BlendMode.srcIn)),
      label: Text(label, style: const TextStyle(color: Palette.whiteColor, fontSize: 17)),
      style: TextButton.styleFrom(
          fixedSize: const Size.fromWidth(400),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(side: const BorderSide(color: Palette.borderColor, width: 3), borderRadius: BorderRadius.circular(10))),
    );
  }
}
