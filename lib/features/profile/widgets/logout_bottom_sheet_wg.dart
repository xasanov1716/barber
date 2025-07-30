import 'package:barber/core/common/sizes.dart';
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
          Text(
            'log out',
            // style: AppTextStyles.urbanist.bold(
            //   color: AppColors.red,
            //   fontSize: 24,
            // ),

            style: TextStyle(
              color: Colors.red,
              fontSize: 24
            ),
          ),
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
                      // backgroundColor: AppColors.blue100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      AppStrings.cancel,
                      // style: AppTextStyles.urbanist.bold(
                      //   color: AppColors.primary(),
                      //   fontSize: 16,
                      // ),
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
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
                    child: Text(
                      AppStrings.yesLogOut,
                      // style: AppTextStyles.urbanist.bold(
                      //   color: AppColors.white,
                      //   fontSize: 16,
                      // ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
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
