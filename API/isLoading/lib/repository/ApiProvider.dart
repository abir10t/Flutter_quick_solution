import 'dart:convert';

import 'package:api/models/product_modal.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final client = http.Client();

  Future<List<SignupDataModel>> fetchProducts() async {
    final response = await client.get('https://my-json-server.typicode.com/abir10t/practrice_api/posts');

    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;

      print(response.body);

      List data = json.decode(jsonString);

      return data.map((Data) => new SignupDataModel.fromMap(Data)).toList();
    }
  }
}
