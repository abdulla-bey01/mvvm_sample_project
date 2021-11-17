import '/data/models/product_model.dart';

abstract class IProductsService {
  Future<List<ProductModel?>?> getAll();
  Future<ProductModel?> getById(dynamic id);
}
