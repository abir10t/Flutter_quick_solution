import 'package:api/ui/productlist_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: productListView(),

    );



  }

}