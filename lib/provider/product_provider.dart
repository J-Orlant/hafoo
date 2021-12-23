import 'package:flutter/cupertino.dart';
import 'package:hafoo/models/product_model.dart';
import 'package:hafoo/services/product_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _product = [];

  List<ProductModel> get product => _product;

  set products(List<ProductModel> products) {
    _product = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      String token = '';
      SharedPreferences prefs = await SharedPreferences.getInstance();
      token = prefs.getString('token') ?? '';
      List<ProductModel> products =
          await ProductService().getProducts(token: token);
      _product = products;
    } catch (e) {
      print(e);
    }
  }
}
