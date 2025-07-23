import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/constants.dart';
import 'package:barber/features/on_boarding/presentation/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static late final GoRouter route;
  static final AppRouter _instance = AppRouter._internal();

  static AppRouter get instance => _instance;

  factory AppRouter() {
    return _instance;
  }

  BuildContext get context =>
      route.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => route.routerDelegate;

  GoRouteInformationParser get goRouterInformationParser =>
      route.routeInformationParser;

  AppRouter._internal() {
    final routes = <RouteBase>[
      GoRoute(
        path: AppConstants.onBoarding,
        builder: (_, state) => OnBoardingPage(),
      ),
    ];

    route = GoRouter(
      initialLocation: AppConstants.splash,
      routes: routes,
      errorBuilder: (context, state) {
        return Scaffold(body: "".s(18));
      },
    );
  }
}
