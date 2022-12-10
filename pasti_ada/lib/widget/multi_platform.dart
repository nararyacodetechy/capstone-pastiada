import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MultiPlatform extends StatelessWidget {
  final WidgetBuilder androidStyle;

  const MultiPlatform({
    Key? key,
    required this.androidStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return androidStyle(context);

      default:
        return androidStyle(context);
    }
  }
}