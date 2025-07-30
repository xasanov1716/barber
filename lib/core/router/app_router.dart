
import 'package:barber/core/router/route_names.dart';
import 'package:barber/features/profile/profile_page.dart';
import 'package:barber/features/profile/screens/edit_profile/edit_profile_page.dart';
import 'package:barber/features/profile/screens/invite_friends/profile_invite_friends_page.dart';
import 'package:barber/features/profile/screens/language/profile_language_page.dart';
import 'package:barber/features/profile/screens/notification/profile_notification_page.dart';
import 'package:barber/features/profile/screens/payment/profile_payment_page.dart';
import 'package:barber/features/profile/screens/privacy_policy/profile_policy_page.dart';
import 'package:barber/features/profile/screens/security/profile_security_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/splash/presentation/splash_page.dart';


class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());


        //profilee


      case RouteNames.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case RouteNames.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfilePage());
      case RouteNames.notification:
        return MaterialPageRoute(builder: (_) => const ProfileNotificationPage());
      case RouteNames.profilePayment:
        return MaterialPageRoute(builder: (_) => const ProfilePaymentPage());
      case RouteNames.paymentAddNewCard:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
        case RouteNames.profileSecurity:
      return MaterialPageRoute(builder: (_) => const ProfileSecurityPage());
      case RouteNames.profileLanguage :
        return MaterialPageRoute(builder: (_) => const ProfileLanguagePage());
      case RouteNames.profilePrivacy :
        return MaterialPageRoute(builder: (_) => const ProfilePrivacyPage());
      case RouteNames.profileInviteFriends :
        return MaterialPageRoute(builder: (_) => const ProfileInviteFriendsPage());


        //error
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
