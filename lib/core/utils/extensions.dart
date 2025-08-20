import 'package:barber/core/utils/constants.dart';
import 'package:flutter/widgets.dart';

extension FigmaSizeExtension on num {
  double appH(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return this * height / figmaHeight;
  }

  double appW(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return this * width / figmaWidth;
  }
}
