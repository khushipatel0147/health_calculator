import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:health_calculator/controller/bmicalculator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? lTween;
  Animation? rTween;

  // @override
  // void initState() {
  //   animationController =
  //       AnimationController(vsync: this, duration: Duration(seconds: 3));
  //   lTween = Tween<Offset>(begin: Offset(-200, 0), end: Offset(0, 0))
  //       .animate(animationController!);
  //   rTween = Tween<Offset>(begin: Offset(200, 0), end: Offset(0, 0))
  //       .animate(animationController!);
  //   animationController!.forward();
  //   animationController!.addListener(() {
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    BmiCalculatorCantroller controller = Get.put(BmiCalculatorCantroller());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0F1537),
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(letterSpacing: 1.5),
        ),
        actions: [
          Icon(Icons.refresh_sharp, size: 25, color: Colors.white),
          SizedBox(width: 18)
        ],
      ),
      backgroundColor: Color(0xff0F1537),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    controller.cmale();
                  },
                  child: Container(
                    height: 150,
                    width: 160,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Obx(
                          () => Icon(
                            Icons.male,
                            color: controller.male.value
                                ? Colors.white
                                : Color(0xff0F1537),
                            size: 90,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "MALE",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1537)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white54.withOpacity(0.60),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    controller.cfemale();
                  },
                  child: Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white54.withOpacity(0.60),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Obx(
                          () => Icon(
                            Icons.female,
                            color: controller.female.value
                                ? Colors.white
                                : Color(0xff0F1537),
                            size: 90,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1537)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.60),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F1537)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Text(
                          "${controller.changevalue.toInt()}",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1537)),
                        ),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0F1537)),
                      ),
                    ],
                  ),
                  Obx(
                    () => Slider(
                      value: controller.changevalue.value,
                      min: 20.0,
                      max: 220.0,
                      onChanged: (value) {
                        controller.updatevalue(value);
                      },
                      activeColor: Color(0xff0F1537).withOpacity(0.70),
                      thumbColor: Colors.white54,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.60),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0F1537)),
                      ),
                      SizedBox(height: 15),
                      Obx(
                        () => Text(
                          "${controller.changeweight}",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1537)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.gplus();
                            },
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 50,
                              color: Color(0xff0F1537),
                            ),
                          ),
                          SizedBox(width: 25),
                          InkWell(
                            onTap: () {
                              controller.gminus();
                            },
                            child: Icon(
                              Icons.remove_circle_outline,
                              size: 50,
                              color: Color(0xff0F1537),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.60),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Age",
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0F1537)),
                      ),
                      SizedBox(height: 15),
                      Obx(
                        () => Text(
                          "${controller.changeage}",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1537)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.aplus();
                            },
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 50,
                              color: Color(0xff0F1537),
                            ),
                          ),
                          SizedBox(width: 25),
                          InkWell(
                            onTap: () {
                              controller.aminus();
                            },
                            child: Icon(
                              Icons.remove_circle_outline,
                              size: 50,
                              color: Color(0xff0F1537),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Get.toNamed('/result');
              },
              child: Container(
                height: 65,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "CALCULATOR YOUR BMI",
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
    ));
  }
}
