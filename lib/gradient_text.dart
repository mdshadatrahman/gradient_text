library gradient_txt;

import 'package:flutter/material.dart';
import 'package:gradient_txt/sample_colors.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.text,
    this.style,
    this.gradient,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => (gradient ??
              const LinearGradient(
                colors: [
                  AppColors.gradient1,
                  AppColors.gradient2,
                  AppColors.gradient3,
                ],
                begin: Alignment(-1.4, -0.9),
                end: Alignment(1.4, -0.9),
              ))
          .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
