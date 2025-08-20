import 'package:barber/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';

extension Space on num {
  SizedBox get ph => SizedBox(height: toDouble() * height / figmaHeight);
  SizedBox get pw => SizedBox(width: toDouble() * width / figmaWidth);
}
