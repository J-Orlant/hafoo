import 'dart:convert';

import 'package:hafoo/models/product_model.dart';

import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'http://192.168.1.8:8000/api';

  Future<List<ProductModel>> getProducts({
    required String token,
  }) async {
    var url = Uri.parse('$baseUrl/products');

    var headers = {
      'content-type': 'application/json',
      'authorization': token,
    };

    var response = await http.get(
      url,
      headers: headers,
    );

    var code = jsonDecode(response.body)['code'];

    if (code == 200) {
      print(response.body);
      List data = jsonDecode(response.body)['products'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
