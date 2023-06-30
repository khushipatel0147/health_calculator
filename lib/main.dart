
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:health_calculator/view/homeScreen.dart';
import 'package:health_calculator/view/resultScreen.dart';
import 'package:health_calculator/view/spleshScreen.dart';

void main() {
  runApp(GetMaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => SpleshScreen(),
      '/home': (p0) => HomeScreen(),
      '/result': (p0) => ResultScreen()
    },
  ));
}
