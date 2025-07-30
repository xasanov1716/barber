import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_responsive.dart';
class SettingsSwitchWg extends StatelessWidget {
  final String text;
  final bool switchValue;
  final void Function(bool)? onChanged;

  const SettingsSwitchWg({
    super.key,
    required this.text,
    required this.switchValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          text.s(18).w(500).c(AppColors.greyScale.grey900),
        SizedBox(
          height: appH(24),
          width: appW(44),
          child: Switch.adaptive(
            activeColor: Colors.white,
            thumbColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                Colors.blue;
              }
              return Colors.white;
            }),
            activeTrackColor: AppColors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: AppColors.greyScale.grey200,
            value: switchValue,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
