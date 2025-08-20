import 'package:barber/core/common/sizes.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20.h,
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
                height: 54.appH(context),
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
            SizedBox(width: 12.appW(context)),
            Expanded(
              child: SizedBox(
                height: 54.appH(context),
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
    ).paddingSymmetric(horizontal: 24.w),
  );
}
