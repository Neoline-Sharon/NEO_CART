import "dart:convert";
import"package:http/http.dart"as http;
import "package:neocart/api/get/productdetailmodel.dart";

Future<Productdetailmodel> productDetails() async {
  try {
    final response = await http.get(Uri.parse("https://ecom.laurelss.com/Api/product_details?product_id=2"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final data2 = Productdetailmodel.fromJson(data);
      return data2;
    } else {
      print("Failed to fetch product details. Status code: ${response.statusCode}");
      throw Exception("Failed to fetch product details. Status code: ${response.statusCode}");
    }
  } catch (error) {
    print("Error during HTTP request: $error");
    throw Exception("Error during HTTP request: $error");
  }
}