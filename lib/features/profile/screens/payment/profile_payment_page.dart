import 'package:barber/features/profile/screens/payment/widgets/profile_payment_card_wg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/default_button_wg.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class ProfilePaymentPage extends StatelessWidget {
  const ProfilePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScale.grey50,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.payment,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(IconlyLight.more_circle, size: appH(28)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: appW(24),
          right: appW(24),
          top: appH(24),
          bottom: appH(48),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: appH(24),
              children: [
                ProfilePaymentCardWg(
                  image: "assets/images/paypal.png",
                  text: AppStrings.payPal,
                  status: AppStrings.connected,
                ),
                ProfilePaymentCardWg(
                  image: "assets/images/google.png",
                  text: AppStrings.googlePay,
                  status: AppStrings.connected,
                ),
                ProfilePaymentCardWg(
                  image: "assets/images/apple.png",
                  text: AppStrings.applePay,
                  status: AppStrings.connected,
                ),
                ProfilePaymentCardWg(
                  image: "assets/images/mastercard.png",
                  text: AppStrings.mastercardPay,
                  status: AppStrings.connected,
                ),
              ],
            ),
            DefaultButtonWg(
              title: AppStrings.addNewCard,
              onPressed: () {
                context.pushNamed(RouteNames.paymentAddNewCard);
              },
            ),
          ],
        ),
      ),
    );
  }
}
