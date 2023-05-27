import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/desktop_widget.dart';
import 'package:flutter_responsive_ui/mobile_widget.dart';
import 'package:flutter_responsive_ui/response_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponseWidget(
      mobileWidget: MobileWidget(),
      desktopWidget: DeskTopWidget(),
    );
  }
}
