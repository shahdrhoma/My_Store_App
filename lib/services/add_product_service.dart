import 'package:store_app/helper/request.dart';
import 'package:store_app/models/product_model.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class AddProductService {
  Future<ProductsModel> addProduct(
      {String? title,
      String? price,
      String? description,
      String? category,
      String? image}) async {
    Map<String, dynamic> data =
        await GetApi.post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'image': image,
      'description': description,
      'category': category
    });
    return ProductsModel.fromJson(data);
  }
}
