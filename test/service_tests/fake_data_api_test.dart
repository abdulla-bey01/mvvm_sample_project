import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_simple/data/remote/abstraction/i_bag_network_manager.dart';
import 'package:mvvm_simple/data/remote/abstraction/i_categories_network_manager.dart';
import 'package:mvvm_simple/data/remote/abstraction/i_products_network_manager.dart';
import 'package:mvvm_simple/data/remote/concrency/fake/fake_bag_network_manager.dart';
import 'package:mvvm_simple/data/remote/concrency/fake/fake_categories_network_manager.dart';
import 'package:mvvm_simple/data/remote/concrency/fake/fake_products_network_manager.dart';

void main() {
  late IProductsNetworkManager _productsNetworkManager;
  late ICategoriesNetworkManager _categoriesNetworkManager;
  late IBagNetworkManager _bagNetworkManager;
  setUp(() {
    _productsNetworkManager = FakeProductsNetworkManager();
    _categoriesNetworkManager = FakeCategoriesNetworkManager();
    _bagNetworkManager = FakeBagNetworkManager();
  });
  test('fake api testing', () async {
    final _products = await _productsNetworkManager.getAll();
    expect(_products, isNotNull);
    final _categories = await _categoriesNetworkManager.getAll();
    expect(_categories, isNotNull);
    final _bagItems = await _bagNetworkManager.getItems();
    expect(_bagItems, isNotNull);
  });
}
