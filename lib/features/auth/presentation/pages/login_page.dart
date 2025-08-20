import 'package:barber/core/common/global_button.dart';
import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/core/utils/constants.dart';
import 'package:barber/features/auth/presentation/pages/register_page.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        scrolledUnderElevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.loginImage.image(
              height: 200 * height / figmaHeight,
              width: 343 * width / figmaWidth,
            ),
            14.verticalSpace,
            "Let’s you in".s(46.sp).w(600),
            16.verticalSpace,
            GlobalButton(
              radius: 12.r,
              textColor: AppColors.black,
              title: "Continue with Facebook",
              onTap: () {},
              color: AppColors.white,
              borderColor: AppColors.cEAEAEA,
              leftIcon: Assets.icons.facebook,
            ),
            8.verticalSpace,
            GlobalButton(
              radius: 12.r,
              textColor: AppColors.black,
              title: "Continue with Google",
              onTap: () {},
              color: AppColors.white,
              borderColor: AppColors.cEAEAEA,
              leftIcon: Assets.icons.google,
            ),
            8.verticalSpace,
            GlobalButton(
              textColor: AppColors.black,
              radius: 12.r,
              title: "Continue with Apple",
              onTap: () {},
              color: AppColors.white,
              borderColor: AppColors.cEAEAEA,
              leftIcon: Assets.icons.apple,
            ),
            24.ph,
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.cCBCBCB)),
                16.pw,
                "or"
                    .s(16.sp)
                    .c(AppColors.c7F7F7F)
                    .paddingSymmetric(horizontal: 16.w),
                16.pw,
                Expanded(child: Divider(color: AppColors.cCBCBCB)),
              ],
            ),
            35.ph,
            GlobalButton(
              title: "Sign in with password",
              onTap: () {},
              textColor: AppColors.white,
              color: AppColors.cFC9401,
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Don’t have an account?".s(16.sp).c(AppColors.c7F7F7F).w(500),
                6.pw,
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: "Sign Up".s(16.sp).w(500).c(AppColors.cFC9401),
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
