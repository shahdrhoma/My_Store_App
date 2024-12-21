import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/request.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<dynamic>> getCategory({required String categoryName}) async {
    List<dynamic> data = await GetApi()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductsModel> categoryList = [];
    for (int i = 0; i < data.length; i++) {
      categoryList.add(ProductsModel.fromJson(data[i]));
    }
    return categoryList;
  }
}
