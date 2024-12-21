import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store_app/helper/request.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await GetApi().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
