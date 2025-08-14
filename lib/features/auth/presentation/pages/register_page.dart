import 'package:barber/core/common/global_button.dart';
import 'package:barber/core/common/global_input.dart';
import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/core/utils/constants.dart';
import 'package:barber/features/auth/presentation/pages/fill_your_profile_page.dart';
import 'package:barber/features/auth/presentation/pages/login_page.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        // toolbarHeight: 0.0,
        scrolledUnderElevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Crate your accout".s(46.sp).c(AppColors.black).w(600),
            28.ph,
            GlobalTextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
              prefixIcon: Assets.icons.mail
                  .svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.black,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(left: 16.w, top: 16.h, bottom: 16.h),
              hintText: "Email",
            ),
            12.ph,
            GlobalTextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
              prefixIcon: Assets.icons.lock.svg().paddingOnly(
                left: 16.w,
                top: 16.h,
                bottom: 16.h,
              ),
              hintText: "Email",
            ),
            18.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: AppColors.cFC9401,
                ),
                0.5.pw,
                "Remember me".s(16.sp).w(500).c(AppColors.black),
              ],
            ),
            18.ph,
            GlobalButton(
              title: "Sign up",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FillYourProfilePage()),
                );
              },
              textColor: AppColors.white,
              color: AppColors.cFC9401,
              radius: 32.r,
              borderColor: AppColors.cFC9401,
            ),
            40.ph,
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.cCBCBCB)),
                8.pw,
                "or continue with"
                    .s(16.sp)
                    .c(AppColors.c7F7F7F)
                    .paddingSymmetric(horizontal: 16.w),
                8.pw,
                Expanded(child: Divider(color: AppColors.cCBCBCB)),
              ],
            ),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 56 * height / AppConstants.figmaHeight,
                  width: 80 * width / AppConstants.figmaWidth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.cEAEAEA),
                    ),
                    child: Assets.icons.facebook.svg().paddingSymmetric(
                      horizontal: 23.w,
                      vertical: 11.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 56 * height / AppConstants.figmaHeight,
                  width: 80 * width / AppConstants.figmaWidth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.cEAEAEA),
                    ),
                    child: Assets.icons.google.svg().paddingSymmetric(
                      horizontal: 23.w,
                      vertical: 11.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 56 * height / AppConstants.figmaHeight,
                  width: 80 * width / AppConstants.figmaWidth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.cEAEAEA),
                    ),
                    child: Assets.icons.apple.svg().paddingSymmetric(
                      horizontal: 23.w,
                      vertical: 11.h,
                    ),
                  ),
                ),
              ],
            ),
            34.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Already have an account?".s(16.sp).w(500).c(AppColors.c7F7F7F),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: "Sign in".s(16.sp).c(AppColors.cFC9401).w(500),
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
