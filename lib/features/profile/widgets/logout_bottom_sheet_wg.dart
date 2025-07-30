import 'package:barber/core/common/sizes.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import '../../../core/common/strings/app_strings.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_responsive.dart';

void showLogoutModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
    ),
    backgroundColor: Colors.white,
    builder: (context) => Padding(
      padding: scaffoldPadding24,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: appH(20),
        children: [
          AppStrings.logOut.s(25).w(600).c(Colors.red),
          Divider(thickness: 1, color: AppColors.greyScale.grey200),
          Text(
            AppStrings.wantToLogOut,
            // style: AppTextStyles.urbanist.bold(
            //   color: AppColors.greyScale.grey800,
            //   fontSize: 24,
            // ),
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey.shade800
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: appH(54),
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                backgroundColor: AppColors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child:
                      AppStrings.cancel.s(16).w(600).c(AppColors.cFC9401),
                  ),
                ),
              ),
              SizedBox(width: appW(12)),
              Expanded(
                child: SizedBox(
                  height: appH(54),
                  child: ElevatedButton(
                    onPressed: () {
                      // context.go(RoutePaths.signin);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.cFEA429,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child:
                      AppStrings.yesLogOut.s(16).c(AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
