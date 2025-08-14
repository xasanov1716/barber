import 'package:barber/core/utils/constants.dart';
import 'package:barber/features/splash/presentation/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(AppConstants.figmaWidth, AppConstants.figmaHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(home: SplashPage(),
      debugShowCheckedModeBanner: false),
    );
  }
}
