import 'package:barber/core/common/global_button.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(backgroundColor: AppColors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.loginImage.image(height: 281, width: 343),
          14.verticalSpace,
          "Let’s you in".s(46.sp).w(600),
          29.verticalSpace,
          GlobalButton(
            title: "Continue with Facebook",
            icon: Assets.icons.google,
            backgroundColor: AppColors.white,
            borderColor: AppColors.cEAEAEA,
            borderRadius: 12.r,
          ),
          14.verticalSpace,
          GlobalButton(
            title: "Continue with Google",
            icon: Assets.icons.facebook,
            backgroundColor: AppColors.white,
            borderColor: AppColors.cEAEAEA,
            borderRadius: 12.r,
          ),
          14.verticalSpace,
          GlobalButton(
            title: "Continue with Apple",
            icon: Assets.icons.apple,
            backgroundColor: AppColors.white,
            borderColor: AppColors.cEAEAEA,
            borderRadius: 12.r,
          ),
        ],
      ),
    );
  }
}
