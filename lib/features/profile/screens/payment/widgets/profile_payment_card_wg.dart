import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_responsive.dart';

class ProfilePaymentCardWg extends StatelessWidget {
  final String image;
  final String text;
  final String? status;

  const ProfilePaymentCardWg({
    super.key,
    required this.image,
    required this.text,
    this.status,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: appH(80),
      padding: EdgeInsets.symmetric(horizontal: appW(24), vertical: appH(24)),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: appW(12),
            children: [
              Image.asset(image, height: appH(32), width: appW(32)),
                text.s(18).w(500).c(AppColors.greyScale.grey900),
            ],
          ),
          Text(
            status ?? "",
          ).s(18).w(500).c(AppColors.cFC9401),
        ],
      ),
    );
  }
}
