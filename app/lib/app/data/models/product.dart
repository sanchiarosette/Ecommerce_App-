class Product {
  final String name;
  final String image;
  final double price;
  final bool? isFavorite;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.isFavorite,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] ?? '',
      image: json['image']?.toString() ?? '',
      price: (json['price'] is String)
          ? double.tryParse(json['price']) ?? 0.0
          : (json['price'] ?? 0).toDouble(),
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'isFavorite': isFavorite,
    };
  }
}