import 'package:hive_flutter/adapters.dart';

class HiveService {
  static const String _tokenKey = 'access';

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(_tokenKey);
  }
}
