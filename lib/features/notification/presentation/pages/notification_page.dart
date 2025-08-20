import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF7F7F7,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: AppColors.cF7F7F7,
        title: "Notification".s(24.sp).w(600).c(AppColors.black),
        leading: GestureDetector(onTap: ()=>Navigator.pop(context),child: Assets.icons.arrowBack.svg().paddingAll(18)),
        automaticallyImplyLeading: false,
        actions: [Assets.icons.more.svg(), 26.pw],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            "Today".s(18.sp).w(600).c(AppColors.black),
            ...List.generate(
              5,
              (index) => DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.white,
                ),
                child: Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.cFC9401,
                      ),
                      child: Assets.icons.bankCard.svg().paddingAll(20),
                    ),
                    Column(
                      children: [
                        "Payment Successfull!".s(16.sp)
                      ],
                    )
                  ],
                ),
              ).paddingSymmetric(horizontal: 24),
            ),
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 10.h),
      ),
    );
  }
}
