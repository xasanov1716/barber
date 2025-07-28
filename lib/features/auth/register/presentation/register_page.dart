import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Hello world".s(18.sp).w(500).c(AppColors.cFEA429)),
    );
  }
}
