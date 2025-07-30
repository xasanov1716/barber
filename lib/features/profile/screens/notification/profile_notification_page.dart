import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../widgets/settings_switch_wg.dart';

class ProfileNotificationPage extends StatefulWidget {
  const ProfileNotificationPage({super.key});

  @override
  State<ProfileNotificationPage> createState() =>
      _ProfileNotificationPageState();
}

class _ProfileNotificationPageState extends State<ProfileNotificationPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.notification,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appW(24), vertical: appH(24)),
        child: Column(
          spacing: appH(40),
          children: [
            SettingsSwitchWg(
              text: AppStrings.generalNotification,
              switchValue: value,
              onChanged: (bool val) {
                setState(() {
                  value = val;
                });
              },
            ),
            SettingsSwitchWg(
              text: AppStrings.sound,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.vibrate,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.specialOffers,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.promoDiscount,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.payments,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.cashback,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.appUpdates,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.newServiceAvailable,
              switchValue: value,
              onChanged: (bool val) {},
            ),
            SettingsSwitchWg(
              text: AppStrings.newTipsAvailable,
              switchValue: value,
              onChanged: (bool val) {},
            ),
          ],
        ),
      ),
    );
  }
}
