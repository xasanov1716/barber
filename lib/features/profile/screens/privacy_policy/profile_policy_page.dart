import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class ProfilePrivacyPage extends StatelessWidget {
  const ProfilePrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.privacyPolicy,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: appW(24),
          left: appW(24),
          top: appH(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              AppStrings.typesOfData.s(20).w(500).c(AppColors.greyScale.grey900),
            Text(
              "SS asldfj asdlifj asdlfhqehraf qwe fqhiuerh qbwiepurh iuqwehr asd asdf woeijf 3oijfg dfljs ognfslfjg ",
            ).s(20).w(500).c(AppColors.greyScale.grey900),
          ],
        ),
      ),
    );
  }
}
