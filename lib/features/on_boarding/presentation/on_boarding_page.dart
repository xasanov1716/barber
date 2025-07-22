import 'package:barber/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageView(),
          AnimatedContainer(duration: Duration(milliseconds: 500)),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.cFC9401,
            ),
            child: Text(""),
          ),
        ],
      ),
    );
  }
}
