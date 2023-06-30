import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
          () {
        Get.offAndToNamed('/home');
      },
    );
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff0F1537),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 150),
                CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/bmi.png")),
                SizedBox(height: 30),
                Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                      letterSpacing: 1.5, fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 230),
                CircularProgressIndicator(
                  color: Colors.yellow.shade400,
                ),
                SizedBox(height: 20),
                Text(
                  "Check your BMI ",
                  style: TextStyle(
                      letterSpacing: 1.5, fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }
}
