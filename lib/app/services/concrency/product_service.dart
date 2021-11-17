import '/app/di/di_container.dart';
import '/app/services/abstraction/i_product_service.dart';
import '/data/migrations/product_migrator.dart';
import '/data/models/product_model.dart';

class ProductsService extends IProductsService {
  @override
  Future<ProductModel?> getById(id) async {
    
    final _productFromServer =
        await AppDiContainer.instance.productsNetworkManager.getById(id);

    final _migratedProduct =
        ProductMigrator().migrateToModel(_productFromServer);

    return _migratedProduct;
  }

  @override
  Future<List<ProductModel?>?> getAll() async {

    final _productsFromServer =
        await AppDiContainer.instance.productsNetworkManager.getAll();

    final _migratedProducts = _productsFromServer
        .map((e) => ProductMigrator().migrateToModel(e))
        .toList();

    return _migratedProducts;
  }
}
