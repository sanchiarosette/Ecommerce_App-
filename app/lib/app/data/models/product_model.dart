import 'review_model.dart';

class ProductModel {
  int? id;
  String? image;
  String? name;
  int? quantity;
  num? price;
  double? rating;
  List<ReviewModel>? reviews;
  String? size;
  bool? isFavorite;
  String? weight;
  String? description;
  String? category;
  String? subcategory;

  ProductModel({
    this.id,
    this.image,
    this.name,
    this.quantity,
    this.price,
    this.rating,
    this.reviews,
    this.size,
    this.isFavorite,
    this.weight,
    this.description,
    this.category,
    this.subcategory,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] is int
          ? json['id']
          : int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      image: json['image']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      quantity: json['quantity'] is int
          ? json['quantity']
          : int.tryParse(json['quantity']?.toString() ?? '0') ?? 0,
      price: json['price'] is num
          ? json['price']
          : num.tryParse(json['price']?.toString() ?? '0') ?? 0,
      rating: json['rating'] is double
          ? json['rating']
          : double.tryParse(json['rating']?.toString() ?? '0') ?? 0.0,
      reviews: json['reviews'] is List
          ? (json['reviews'] as List)
              .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList()
          : [],
      size: json['size']?.toString() ?? '',
      isFavorite: json['isFavorite'] ?? false,
      weight: json['weight']?.toString() ?? '',
      description: json['description']?.toString() ?? '',
      category: json['category']?.toString() ?? '',
      subcategory: json['subcategory']?.toString() ?? '',
    );
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel.fromJson(map);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'quantity': quantity,
      'price': price,
      'rating': rating,
      'reviews': reviews?.map((e) => e.toMap()).toList(),
      'size': size,
      'isFavorite': isFavorite,
      'weight': weight,
      'description': description,
      'category': category,
      'subcategory': subcategory,
    };
  }

  Map<String, dynamic> toJson() {
    return toMap();
  }
}
