class Product {
  final int id;
  final String name;
  final String description;
  final int price;
  final String imageLocation;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageLocation,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      imageLocation: json['image_location']
          as String, // Assuming the key is 'image_location' in your JSON
    );
  }
}
