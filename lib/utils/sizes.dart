import 'package:flutter/material.dart';

class SizeUtils {
  BuildContext context;
  SizeUtils(this.context);

  double get width {
    return MediaQuery.of(context).size.width;
  }

  double get height {
    return MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;
  }
}
