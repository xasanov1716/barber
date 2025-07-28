import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.title,
    this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderRadius,
  });

  final String title;
  final SvgGenImage? icon;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration());
  }
}
