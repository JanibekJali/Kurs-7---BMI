import 'package:bmi_calculator/widgets/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/bmi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: MainTheme.darkTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
