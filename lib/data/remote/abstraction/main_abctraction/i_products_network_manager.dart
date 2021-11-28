import '/data/dtos/product_dto.dart';

abstract class IProductsNetworkManager {
  Future<List<ProductDto>> getAll();
  Future<ProductDto> getById(dynamic id);
}
