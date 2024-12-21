import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/request.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductsService {
  Future<List<ProductsModel>> getAllProducts() async {
    List<dynamic> data =
        await GetApi().get(url: 'https://fakestoreapi.com/products');
    print(data);
    List<ProductsModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductsModel.fromJson(data[i]));
    }
    return productList;
  }
}
