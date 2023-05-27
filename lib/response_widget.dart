import 'package:flutter/material.dart';

class ResponseWidget extends StatelessWidget {
  const ResponseWidget({
    super.key,
    required this.mobileWidget,
    required this.desktopWidget,
  });
  final Widget mobileWidget;
  final Widget desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        if (width < 600) {
          return mobileWidget;
        } else {
          return desktopWidget;
        }
      },
    );
  }
}
