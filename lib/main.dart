import 'api_provider.dart';

void main(List<String> arguments) async {
  final provider = ApiProvider();
  final product = await provider.getProductList();
  print(product);
}