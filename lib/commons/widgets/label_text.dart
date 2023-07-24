library diplomski_rad_assets_module;

import 'package:diplomski_rad_assets_module/commons/colors/text_colors.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const LabelText({super.key,
    this.size = 16,
    required this.text,
    this.color = TextColors.mainTextColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}

