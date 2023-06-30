import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class BmiCalculatorCantroller extends GetxController {
  RxDouble changevalue = 20.0.obs;

  void updatevalue(double up) {
    changevalue.value = up;
  }

  RxInt changeweight = 25.obs;

  void gplus() {
    changeweight.value++;
  }

  void gminus() {
    if (changevalue >= 1) {
      changeweight.value--;
    }
  }

  RxInt changeage = 5.obs;

  void aplus() {
    changeage.value++;
  }

  void aminus() {
    if (changevalue >= 1) {
      changeage.value--;
    }
  }

  RxBool male = false.obs;
  RxBool female = false.obs;

  void cmale() {
    male.value = true;
    female.value = false;
  }

  void cfemale() {
    female.value = true;
    male.value = false;
  }
  RxDouble cal=0.0.obs;
  void result()
  {
    cal.value=(changeweight.value/changevalue.value/changevalue.value)*10000;
  }
}
