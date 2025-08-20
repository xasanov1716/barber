import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../core/utils/app_colors.dart';

class ProfileSettingRowWg extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? secondaryText;
  final VoidCallback onPressed;

  const ProfileSettingRowWg({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.secondaryText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: icon != null ? 20.appW(context) : 0,
          children: [
            icon != null
                ? Icon(icon, size: 28.h, color: AppColors.greyScale.grey900)
                : SizedBox.shrink(),
              title.s(18).w(500).c(AppColors.black
            ),
          ],
        ),
        Row(
          spacing: 20.appW(context),
          children: [
            Text(
              secondaryText ?? ""..s(18).w(500).c(AppColors.black),
              ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(IconlyLight.arrow_right_2),
            ),
          ],
        ),
      ],
    );
  }
}
