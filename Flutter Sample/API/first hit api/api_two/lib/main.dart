import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UI/product_list.dart';
void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProductList(

      ),

    );



  }

}