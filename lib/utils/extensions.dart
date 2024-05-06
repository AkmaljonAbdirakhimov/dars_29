import 'package:flutter/material.dart';

extension SizedBoxExtensions on int {
  Widget height() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget width() {
    return SizedBox(
      width: toDouble(),
    );
  }
}

extension ScreenSizeExtensions on BuildContext {}
