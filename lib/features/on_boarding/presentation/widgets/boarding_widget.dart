import 'package:flutter/material.dart';

import '../../../../core/utils/app_responsive.dart';

class BoardingWidget extends StatelessWidget {
  final String text;
  final Widget image;

  const BoardingWidget({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: appH(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: appH(60),
        children: [
          image,
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),
             )
        ],
      ),
    );
  }
}
