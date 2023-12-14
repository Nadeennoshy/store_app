class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.category,
      required this.description,
      required this.id,
      required this.title,
      required this.price,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        category: jsonData['category'],
        description: jsonData['description'],
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'].toDouble() , count: jsonData['count']);
  }
}