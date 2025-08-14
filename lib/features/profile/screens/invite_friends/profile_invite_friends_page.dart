import 'package:barber/core/common/sizes.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/common/widgets/contact_card.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';


class ProfileInviteFriendsPage extends StatefulWidget {
  const ProfileInviteFriendsPage({super.key});

  @override
  State<ProfileInviteFriendsPage> createState() =>
      _ProfileInviteFriendsPageState();
}

class _ProfileInviteFriendsPageState extends State<ProfileInviteFriendsPage> {
  bool isInvited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.inviteFriends,
      ),
      body: Padding(
        padding: scaffoldPadding24,
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) => BaseContactCardWg(
            imagePath: "assets/images/profile.png",
            name: "Elon Musk",
            subtitle: "+998 90 180 20 40",
            trailing: GestureDetector(
              onTap: () {
                setState(() {
                  isInvited = !isInvited;
                });
              },
              child: Chip(
                backgroundColor:
                    isInvited ? AppColors.white : AppColors.cFC9401,
                shape: StadiumBorder(
                  side: BorderSide(color: AppColors.cFC9401, width: 2),
                ),
                label: Text(
                  isInvited ? AppStrings.invited : AppStrings.invite
                ).s(14).w(500).c(isInvited ? AppColors.cFC9401 : AppColors.white ),
                padding: EdgeInsets.symmetric(
                  horizontal: appW(12),
                  vertical: appH(6),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
