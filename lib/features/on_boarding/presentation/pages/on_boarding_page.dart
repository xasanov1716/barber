import 'package:barber/core/common/global_button.dart';
import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/extensions.dart';
import 'package:barber/features/auth/presentation/pages/login_page.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<String> texts = [
    "Find Barbers and Salons Easily in You Hans",
    "Book Your Favorite Barber and Salon Quickly",
    "Book Your Favorite Barber and Salon Quickly",
  ];

  @override
  Widget build(BuildContext context) {
    
    final List<Widget> images = [
      Assets.icons.onBoardingOne.svg(height: 281.appH(context), width: 343.appW(context)),
      Assets.icons.onBoardingTwo.svg(height: 281.appH(context), width: 343.appW(context)),
      Assets.icons.onBoardingThird.svg(height: 281.appH(context), width: 343.appW(context)),
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        // toolbarHeight: 0.0,
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                _currentPage = value;
                setState(() {});
              },
              controller: _pageController,
              children: List.generate(images.length, (index) {
                return Column(
                  children: [
                    images[index],
                    60.ph,
                    texts[index]
                        .s(34.sp)
                        .c(AppColors.black)
                        .w(500)
                        .copyWith(textAlign: TextAlign.center),
                  ],
                ).paddingSymmetric(horizontal: 32.w);
              }),
            ),
          ),
          Row(
            spacing: 4.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return SizedBox(
                width: index == _currentPage ? 38.appW(context) : 8.appW(context),
                height: 8.h,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                    color: index == _currentPage
                        ? AppColors.cFC9401
                        : AppColors.cAFAFAF,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              );
            }),
          ),
          40.ph,
          GlobalButton(
            title: 'Next',
            onTap: () {
              if (_currentPage < texts.length - 1) {
                _pageController.animateToPage(
                  _currentPage + 1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                // Oxirgi sahifa bo‘lsa boshqa pagega o'tish
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (ctx) => LoginPage()),
                  (f) => false,
                );
              }
              setState(() {});
            },
            color: AppColors.cFC9401,
            textColor: AppColors.white,
          ).paddingSymmetric(horizontal: 32.w),
          32.ph,
        ],
      ),
    );
  }
}
