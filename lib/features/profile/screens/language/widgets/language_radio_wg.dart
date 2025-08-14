import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/enum/languages.dart';
import '../../../../../core/utils/app_colors.dart';

class LanguageRadioWg extends StatelessWidget {
  final String language;
  final Languages value;
  final Languages? groupValue;
  final void Function(Languages?)? onChanged;

  const LanguageRadioWg({
    super.key,
    required this.language,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       language.s(18).w(500).c(AppColors.greyScale.grey900),
        Radio<Languages>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
