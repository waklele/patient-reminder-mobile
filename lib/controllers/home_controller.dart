import 'package:get/get.dart';
import 'package:holadoc/models/product.dart';
import 'package:holadoc/services/api_service.dart';

class HomeController extends GetxController {
  final products = List<Product>.empty(growable: true).obs;
  final apiService = Get.find<ApiService>();

  Future<void> fetchProducts() async {
    final response = await apiService.get("/products/1");
    print(response.hasError);
    print(response.body);
  }
}
