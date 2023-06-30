import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:health_calculator/controller/bmicalculator.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    BmiCalculatorCantroller controller = Get.put(BmiCalculatorCantroller());

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0F1537),
        elevation: 0,
        title: Text(
          "YOUR BMI RESULT",
          style: const TextStyle(fontSize: 25, letterSpacing: 1.5),
        ),
      ),
      backgroundColor: Color(0xff0F1537),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "Normal Health",
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade500),
            ),
            SizedBox(
              height: 80,
            ),
            Obx(
              () =>  Text(
                "${controller.fcal.value.toInt()}",
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Text(
                "You have a normal body weight Good job ",
                style: TextStyle(
                    letterSpacing: 1.5, fontSize: 21, color: Colors.white),
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: Container(
                  height: 65,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "RE-CALCULATE ",
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0F1537)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.60),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
