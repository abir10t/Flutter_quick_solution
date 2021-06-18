import 'package:api_two/Utils/Loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api_two/Controller/product_controller.dart';

class NextPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 final xa= Get.put(ProductController());

    return Scaffold(
      body:  GetBuilder<ProductController>(
        init: ProductController(),
        builder: (value) {
          return ListView.builder(
            itemCount: value.get_productList.data.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Column(
                children: <Widget>[
                  Text(
                    value.get_productList.data[index].title,

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    value.get_productList.data[index].slug,
                  ),

                ],
              );
            },
          );



        },
      ),
    );
  }
}
