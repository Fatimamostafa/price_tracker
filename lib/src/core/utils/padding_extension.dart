import 'package:flutter/material.dart';

/// A collection of methods added to [Widget] that wraps it in a
/// [Padding] widget
extension PaddingExtension on Widget {
  /// Wraps this [Widget] with [Padding]
  Padding withPadding({
    Key? key,
    required EdgeInsetsGeometry padding,
  }) {
    return Padding(
      key: key,
      padding: padding,
      child: this,
    );
  }

  /// Wraps this [Widget] with [Padding] via a [EdgeInsets.only] constructor
  Padding withPaddingOnly({
    Key? key,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return withPadding(
      key: key,
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
    );
  }

  /// Wraps this [Widget] with [Padding] via a [EdgeInsets.symmetric]
  /// constructor
  Padding withPaddingSymmetric({
    Key? key,
    double vertical = 0.0,
    double horizontal = 0.0,
  }) {
    return withPadding(
      key: key,
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
    );
  }

  /// Wraps this [Widget] with [Padding] via a [EdgeInsets.all] constructor
  Padding withPaddingAll(
    double padding, {
    Key? key,
  }) {
    return withPadding(
      key: key,
      padding: EdgeInsets.all(padding),
    );
  }
}
