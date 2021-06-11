import 'package:api_two/Repository/ApiProvider.dart';
import 'package:api_two/UI/NextPage.dart';
import 'package:api_two/Utils/Loader.dart';
import 'package:api_two/models/product_modal.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class ProductController extends GetxController{



  ApiService api = ApiService();
  var product_list = SignupDataModel().obs;


  SignupDataModel get get_productList => this.product_list.value;
  set set_product_list( SignupDataModel value) => this.product_list = value.obs;


  void fetchproducts()async{

    print('a');
    Get.dialog(Loader(), barrierDismissible: false,useRootNavigator: false);
    final products = await api.fetchdata();

    if(products.success == true){
      await Future.delayed(Duration(seconds: 2));
      Navigator.of(Get.context).pop();

      set_product_list = products;
      update();
      Get.to(NextPage());

    }
    else{
      print('not success');
    }


    //print(products);

    // Get.dialog(Loader(), barrierDismissible: false);






    // if(products.toString()!=""){
    //   showSnackBar(message: "Login Successful", warning: false);
    //
    // }

  }




}