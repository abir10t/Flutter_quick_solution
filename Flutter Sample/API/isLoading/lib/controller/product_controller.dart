import 'package:api/models/product_modal.dart';
import 'package:api/repository/ApiProvider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';





class ProductController extends GetxController{


  ApiService api = ApiService();
var isLoading = true.obs;


  var product_list = List<SignupDataModel>().obs;
  List<SignupDataModel> get get_productList => this.product_list.value;
  set set_product_list(List<SignupDataModel> value) => this.product_list = value.obs;




  void fetchproducts()async{

         print("here");

         var products = await api.fetchProducts();
         print("print function");
         print(products);
         print(products.length);
         print('aaaaa');
         set_product_list = products;
         update();

       // finally{
       //   isLoading(false);
       // }

  }


}