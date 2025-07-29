import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderRadius,
  });

  final String title;
  final SvgGenImage icon;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(),child: 
    Column(
      children: [
        Row(
          children: [
            icon.svg(),
            12.horizontalSpace,
            title.s(16.sp).w(500).c(AppColors.c000000)
          ],
        )
      ],
    ),);
  }
}
