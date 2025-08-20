import 'package:barber/core/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_responsive.dart';

class ProfileBlankContainerWg extends StatelessWidget {
  final Widget widget;

  const ProfileBlankContainerWg({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 20.appW(context)),
      width: double.infinity,
      height: 56.appH(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyScale.grey50,
      ),
      child: widget,
    );
  }
}
