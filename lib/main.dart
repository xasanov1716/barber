import 'package:barber/core/router/app_router.dart';
import 'package:barber/features/app/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppRouter.instance;
  runApp(const MyApp());
}
