import 'package:dio/dio.dart';
import 'cart_model.dart';

abstract class ApiPaths {
  static String products = 'carts';
}

class ApiProvider {
  final _client = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com/'));

  Future<List<CartModel>> getProductList() async {
    final response = await _client.get(ApiPaths.products);
    final jsonList = response.data as List<dynamic>;

    final result = jsonList.map((e) => CartModel.fromJson(e)).toList();
    return result;
  }
}