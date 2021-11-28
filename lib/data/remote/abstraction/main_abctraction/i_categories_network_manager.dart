import '/data/dtos/category_dto.dart';

abstract class ICategoriesNetworkManager{
  Future<List<CategoryDto>> getAll();
  Future<CategoryDto> getById(dynamic id);
}
