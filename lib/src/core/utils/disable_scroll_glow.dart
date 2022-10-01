import 'package:flutter/material.dart';

/// Disables the glowing effect when scrolled to an end position
class DisableScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}