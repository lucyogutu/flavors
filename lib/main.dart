import 'package:flavors/models/app_config.dart';
import 'package:flavors/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    primaryColor: Colors.blue,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.primaryColor, super.key});

  final MaterialColor primaryColor;

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return MaterialApp(
      title: config!.appDisplayName,
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: const HomePage(),
    );
  }
}
