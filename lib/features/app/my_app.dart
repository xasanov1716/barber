import 'package:barber/core/router/app_router.dart';
import 'package:barber/features/profile/profile_page.dart';
import 'package:barber/features/splash/presentation/splash_page.dart';
import 'package:flutter/material.dart';

import '../../core/router/route_names.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteNames.profile,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//
//
// import 'package:barber/core/utils/constants.dart';
// import 'package:barber/features/splash/presentation/splash_page.dart';
// import 'package:flutter/material.dart';
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(AppConstants.figmaWidth, AppConstants.figmaHeight),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       child: MaterialApp(home: SplashPage(),
//           debugShowCheckedModeBanner: false),
//     );
//   }
// }