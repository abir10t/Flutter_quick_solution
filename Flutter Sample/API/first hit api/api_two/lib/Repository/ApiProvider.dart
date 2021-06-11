import 'dart:convert';
import 'package:api_two/models/product_modal.dart';
import 'package:http/http.dart' as http;



class ApiService
{
  final client = http.Client();
  Future<SignupDataModel>fetchdata()async{
   final response = await client.get("http://api.flipper.com.bd/api/v1/product-categories");
   if(response.statusCode == 200){
     var jsonString = response.body;

     print(response.body);
     return SignupDataModel.fromMap(json.decode(jsonString));

   }

  }
}
