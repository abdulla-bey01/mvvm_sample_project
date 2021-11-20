import '/app/di/di_container.dart';
import '/data/migrations/category_migrator.dart';
import '/app/services/abstraction/i_category_service.dart';
import '/data/models/category_model.dart';

class CategoryService extends ICategoryService {
  @override
  Future<List<CategoryModel?>?> getAll() async {
    final _categoriessFromServer =
        await AppDiContainer.instance.categoriessNetworkManager.getAll();

    final _migratedCategories = _categoriessFromServer
        .map((e) => CategoryMigrator().migrateToModel(e))
        .toList();

    return _migratedCategories;
  }

  @override
  Future<CategoryModel?> getById(id) async {
    final _categoryFromServer =
        await AppDiContainer.instance.categoriessNetworkManager.getById(id);

    final _migratedCategory =
        CategoryMigrator().migrateToModel(_categoryFromServer);

    return _migratedCategory;
  }
}
