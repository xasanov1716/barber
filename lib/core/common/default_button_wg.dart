import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_responsive.dart';

class DefaultButtonWg extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DefaultButtonWg({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: appH(58),
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(backgroundColor: AppColors.cFEA429),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
