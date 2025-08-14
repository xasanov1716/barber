import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/features/profile/screens/language/widgets/language_radio_wg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/enum/languages.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class ProfileLanguagePage extends StatelessWidget {
  const ProfileLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ActionAppBarWg(
        titleText: AppStrings.language,
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: appW(24),
          right: appW(24),
          top: appH(24),
          bottom: appH(48),
        ),
        child: Column(
          spacing: appH(24),
          children: [
            Column(
              spacing: appH(30),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _text(AppStrings.suggested),
                LanguageRadioWg(
                  language: AppStrings.englishUS,
                  value: Languages.english,
                  groupValue: Languages.english,
                  onChanged: (val) {},
                ),
              ],
            ),
            Divider(color: AppColors.greyScale.grey200),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: appH(30),
              children: [
                _text(AppStrings.language),
                LanguageRadioWg(
                  language: AppStrings.russian,
                  value: Languages.russian,
                  groupValue: Languages.english,
                  onChanged: (val) {},
                ),
                LanguageRadioWg(
                  language: AppStrings.uzbek,
                  value: Languages.uzbek,
                  groupValue: Languages.english,
                  onChanged: (val) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _text(String text) => Text(
      text,
    ).s(20).w(500).c(AppColors.greyScale.grey900);
