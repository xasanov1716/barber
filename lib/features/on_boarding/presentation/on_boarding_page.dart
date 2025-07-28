import 'package:barber/core/common/default_button_wg.dart';
import 'package:barber/core/common/sizes.dart';
import 'package:barber/core/common/strings/app_strings.dart';
import 'package:barber/features/auth/login/presentation/login_page.dart';
import 'package:barber/features/on_boarding/presentation/widgets/boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_responsive.dart';

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
    AppResponsive.init(context);
    final List<Widget> images = [
      SvgPicture.asset('assets/icons/on_boarding_one.svg',
          height: appH(320), width: appW(320)),
      SvgPicture.asset('assets/icons/on_boarding_two.svg',
          height: appH(320), width: appW(320)),
      SvgPicture.asset('assets/icons/on_boarding_third.svg',
          height: appH(320), width: appW(320)),
    ];

    return Scaffold(
      body: Padding(
        padding: scaffoldPadding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: appH(80),
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: texts.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) => BoardingWidget(
                  text: texts[index],
                  image: images[index],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                texts.length,
                    (index) => _buildDot(index),
              ),
            ),
            DefaultButtonWg(
              title: _currentPage == texts.length - 1
                  ? AppStrings.getStarted
                  : AppStrings.next,
              onPressed: () {
                if (_currentPage < texts.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: appW(5)),
      width: _currentPage == index ? appW(32) : appW(8),
      height: appH(8),
      decoration: BoxDecoration(
        color: _currentPage == index
            ? AppColors.cFC9401
            : AppColors.greyScale.grey300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
