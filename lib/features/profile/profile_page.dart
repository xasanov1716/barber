import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/features/profile/widgets/logout_bottom_sheet_wg.dart';
import 'package:barber/features/profile/widgets/profile_info_wg.dart';
import 'package:barber/features/profile/widgets/profile_setting_row_wg.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../core/common/app_bar/default_appbar_wg.dart';
import '../../core/common/strings/app_strings.dart';
import '../../core/router/route_names.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_responsive.dart';
import '../../core/utils/text_styles/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBarWg(
        titleText: AppStrings.profile,
        onMorePressed: () {},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appW(24), vertical: appH(12)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: appH(20),
            children: [
              ProfileInfoWg(
                onEdit: () {},
                name: "Elon Musk",
                gmail: "elon@gmail.com",
                image: "",
              ),
              Divider(height: 1, color: AppColors.greyScale.grey200),
              ProfileSettingRowWg(
                icon: IconlyLight.profile,
                title: 'edit profile',
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.editProfile);
                },
              ),
              ProfileSettingRowWg(
                icon: IconlyLight.notification,
                title: AppStrings.notification,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.notification);
                },
              ),
              ProfileSettingRowWg(
                icon: IconlyLight.wallet,
                title: AppStrings.payment,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.profilePayment);
                },
              ),
              ProfileSettingRowWg(
                icon: IconlyLight.shield_done,
                title: AppStrings.security,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.profileSecurity);
                },
              ),
              ProfileSettingRowWg(
                icon: Icons.language,
                title: AppStrings.language,
                secondaryText: "English (US)",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.profileLanguage);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: appW(20),
                    children: [
                      Icon(
                        IconlyLight.show,
                        size: appH(28),
                        color: AppColors.greyScale.grey900,
                      ),
                     AppStrings.darkMode.s(18).w(500).c(AppColors.black)
                    ],
                  ),
                  Switch.adaptive(value: false, onChanged: (val) {}),
                ],
              ),
              ProfileSettingRowWg(
                icon: IconlyLight.lock,
                title: AppStrings.privacyPolicy,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.profilePrivacy);
                },
              ),
              ProfileSettingRowWg(
                icon: IconlyLight.user_1,
                title: AppStrings.inviteFriends,
                onPressed: () {},
              ),
              InkWell(
                onTap: () => showLogoutModal(context),
                child: Row(
                  spacing: appW(20),
                  children: [
                    Icon(
                      IconlyLight.logout,
                      size: appH(28),
                      color: Colors.red,
                    ),
                  AppStrings.logOut.s(18).w(500).c(Colors.red),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
