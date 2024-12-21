class ProductsModel {
  final dynamic id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;
  final Rating rating;

  ProductsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductsModel.fromJson(json) {
    return ProductsModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      category: json['category'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  final double rate;
  final int count;
  Rating({required this.rate, required this.count});

  factory Rating.fromJson(json) {
    return Rating(rate: (json['rate'] as num).toDouble(), count: json['count']);
  }
}
