import 'package:store_app/helper/request.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductsModel> updateProduct(
      {required String title,
      required int id,
      required String price,
      required String description,
      required String category,
      required String image}) async {
    Map<String, dynamic> data =
        await GetApi.put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'image': image,
      'description': description,
      'category': category
    });
    return ProductsModel.fromJson(data);
  }
}
