import 'package:api/controller/product_controller.dart';
import 'package:api/controller/product_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class productListView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final xa = Get.put(ProductController());


    return Scaffold(
      body: GetBuilder<ProductController>(
        init: ProductController(),

        builder: (controller) {
          return ListView.builder(
            itemCount: xa.get_productList.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Column(
                children: <Widget>[
                  Text(
                    xa.get_productList[index].id.toString(),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    xa.get_productList[index].title,
                  )

                ],
              );
            },

          );
        },
        initState: (_){
          print("From UI");
          xa.fetchproducts();
        },
      ),
    );
  }
}
