import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:barber/core/common/global_button.dart';
import 'package:barber/core/common/global_input.dart';
import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/core/utils/extensions.dart';
import 'package:barber/features/tabs/tabs.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillYourProfilePage extends StatefulWidget {
  const FillYourProfilePage({super.key});

  @override
  State<FillYourProfilePage> createState() => _FillYourProfilePageState();
}

class _FillYourProfilePageState extends State<FillYourProfilePage> {
  final List<String> gender = ['Female', 'Male'];

  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: AppColors.white,
        title: "Fill Your Profile".s(24.sp).c(AppColors.black).w(600),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Assets.icons.arrowBack.svg().paddingAll(20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 133.appH(context),
                  width: 134.appW(context),
                  child: CircleAvatar(
                    backgroundColor: AppColors.cD9D9D9,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Assets.icons.union.svg(
                        colorFilter: ColorFilter.mode(
                          AppColors.cE9EAEF,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 34.appH(context),
                    width: 34.appW(context),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.cFC9401,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(Icons.edit, color: AppColors.white),
                      // child: Assets.icons.edit.svg(
                      //   colorFilter: ColorFilter.mode(
                      //     AppColors.white,
                      //     BlendMode.srcIn,
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            40.ph,
            GlobalTextField(
              hintColor: AppColors.cAAAAAA,
              hintText: "Full Name",
              fillColor: AppColors.cF4F4F4,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
            ),
            18.ph,
            GlobalTextField(
              hintColor: AppColors.cAAAAAA,
              hintText: 'Nickname',
              fillColor: AppColors.cF4F4F4,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
            ),
            18.ph,
            GlobalTextField(
              hintColor: AppColors.cAAAAAA,
              hintText: 'Date of Birth',
              fillColor: AppColors.cF4F4F4,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
            ),
            18.ph,
            GlobalTextField(
              hintColor: AppColors.cAAAAAA,
              hintText: 'Email',
              fillColor: AppColors.cF4F4F4,
              suffixIcon: Assets.icons.mail.svg().paddingAll(10),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
            ),
            18.ph,
            GlobalTextField(
              hintColor: AppColors.cAAAAAA,
              hintText: 'Phone Number',
              fillColor: AppColors.cF4F4F4,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: '',
            ),
            18.ph,

            // GlobalTextField(
            //   hintColor: AppColors.cAAAAAA,
            //   hintText: 'Gender',
            //   fillColor: AppColors.cF4F4F4,
            //   keyboardType: TextInputType.text,
            //   textInputAction: TextInputAction.done,
            //   caption: '',
            // ),
            CustomDropdown(
              decoration: CustomDropdownDecoration(
                closedBorder: Border.all(color: AppColors.cF4F4F4),
                expandedBorderRadius: BorderRadius.circular(16.r),
                expandedBorder: Border.all(color: AppColors.cF4F4F4),
              ),
              initialItem: selectedGender,
              hintText: "Gender",
              items: gender,
              onChanged: (value) {
                selectedGender = value!;
                setState(() {});
              },
            ),
            40.ph,
            GlobalButton(
              title: "Continue",
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(builder: (ctx) => Tabs()),
                  (f) => false,
                );
              },
              color: AppColors.cFC9401,
              textColor: AppColors.white,
            ),
          ],
        ).paddingSymmetric(horizontal: 35.w),
      ),
    );
  }
}
