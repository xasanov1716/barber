import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/core/utils/constants.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _nextPage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        context.go(AppConstants.onBoarding);
      }
    });
  }

  @override
  void initState() {
    _nextPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFEA429,
      body: Center(child: Assets.icons.logo.svg()),
    );
  }
}
