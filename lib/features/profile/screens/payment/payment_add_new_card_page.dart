import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/default_button_wg.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../widgets/profile_blank_container_wg.dart';

class PaymentAddNewCardPage extends StatelessWidget {
  const PaymentAddNewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.addNewCard,
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
                Image.asset(
                  "assets/images/card_dummy.png",
                  height: appH(239),
                  width: double.infinity,
                ),
                _customLayout(
                  title: AppStrings.cardName,
                  widget: ProfileBlankContainerWg(
                    widget: Text("Ergasheva Zaynabxon", style: _textStyle),
                  ),
                ),
                _customLayout(
                  title: AppStrings.cardNumber,
                  widget: ProfileBlankContainerWg(
                    widget: Text("3255 2345 6534 2345", style: _textStyle),
                  ),
                ),
                Row(
                  spacing: appW(24),
                  children: [
                    Expanded(
                      child: _customLayout(
                        title: AppStrings.expiryDate,
                        widget: ProfileBlankContainerWg(
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("08/12/2028", style: _textStyle),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.calendar),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: _customLayout(
                        title: AppStrings.cvv,
                        widget: ProfileBlankContainerWg(
                          widget: Text("325", style: _textStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            DefaultButtonWg(title: AppStrings.addNewCard, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

final _textStyle = TextStyle(
  color: AppColors.greyScale.grey900,
  fontSize: 14,
  fontWeight: FontWeight.w400
);

Widget _customLayout({required String title, required Widget widget}) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: appH(12),
      children: [
          title.s(18).w(900).c(AppColors.greyScale.grey900),
        widget,
      ],
    );
