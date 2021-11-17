import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_simple/data/remote/abstraction/i_products_network_manager.dart';
import 'package:mvvm_simple/data/remote/concrency/fake/fake_products_network_manager.dart';

void main() {
  late IProductsNetworkManager _productsNetworkManager;
  setUp(() {
    _productsNetworkManager = FakeProductsNetworkManager();
  });
  test('fake api testing', () async {
    final _products = await _productsNetworkManager.getAll();
    expect(_products, isNotNull);
  });
}
