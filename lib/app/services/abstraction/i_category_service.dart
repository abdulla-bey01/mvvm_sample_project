import '/data/models/category_model.dart';

abstract class ICategoryService {
  Future<List<CategoryModel?>?> getAll();
  Future<CategoryModel?> getById(dynamic id);
}