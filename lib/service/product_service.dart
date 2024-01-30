import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lightcofee/models/product/products.dart'; // Ensure you have imported your Product model here

class ProductService {
  final String apiUrl = 'http://127.0.0.1:8000/api/v1/product';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);

      if (jsonData['result'] == true && jsonData.containsKey("data")) {
        List<dynamic> nestedData = jsonData["data"] as List<dynamic>;

        // Extract products from nested data
        List<Product> products = [];

        for (var list in nestedData) {
          for (var item in list) {
            products.add(Product.fromJson(item));
          }
        }

        return products;
      } else {
        throw Exception(jsonData['message'] ?? 'Failed to load products');
      }
    } else {
      throw Exception('Failed to load products from API');
    }
  }
}
