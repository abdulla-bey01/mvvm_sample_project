import '/data/dtos/category_dto.dart';
import '/data/models/category_model.dart';
import 'migrator.dart';

class CategoryMigrator extends Migrator<CategoryModel, CategoryDto> {
  @override
  CategoryDto? migrateToDto(CategoryModel? model) {
    return CategoryDto.createNamed(
      id: model?.id,
      title: model?.title,
    );
  }

  @override
  CategoryModel? migrateToModel(CategoryDto? dto) {
    return CategoryModel.createNamed(
      id: dto?.id,
      title: dto?.title,
    );
  }
}
