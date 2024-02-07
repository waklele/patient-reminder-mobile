import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class ApiService extends GetConnect implements GetxService {
  @override
  void onInit() {
    // https://dummyjson.com/docs/auth
    httpClient.baseUrl = "https://dummyjson.com";

    // httpClient.addAuthenticator((Request request) async {
    //   final response = await get("http://yourapi/token");
    //   final token = response.body['token'];
    //   // Set the header
    //   request.headers['Authorization'] = "$token";
    //   return request;
    // });

    super.onInit();
  }
}
