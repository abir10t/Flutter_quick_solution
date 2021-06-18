import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class Business_logic extends GetxController{

  var counter = 1.obs;


  void increment() {
    counter.value++;

   // look here!
  }

}