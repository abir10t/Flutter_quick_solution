import 'package:api_two/Utils/Loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api_two/Controller/product_controller.dart';

import 'NextPage.dart';

class ProductList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final xa= Get.put(ProductController());
    return GetBuilder<ProductController>(
      // initState: (_) {
      //   xa.fetchproducts();
      // },
      init: ProductController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
          ),
           body: Container(
            child: FlatButton(
              onPressed: (){
                xa.fetchproducts();

              },
              child: Text('click me'),
            ),
          )
        );

      }

    );
  }

}
