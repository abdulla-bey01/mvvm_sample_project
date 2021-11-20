import '/data/dtos/category_dto.dart';
import '/data/models/category_model.dart';
import 'migrator.dart';

class CategoryMigrator extends Migrator<CategoryModel, CategoryDto> {
  @override
  CategoryDto? migrateToDto(CategoryModel? model) {
    return CategoryDto.createNamed(
      id: model?.id,
      title: model?.title,
      slogan: model?.slogan,
      chidren: model?.chidren?.map((e) => migrateToDto(e)!).toList(),
      salePercent: model!.salePercent,
    );
  }

  @override
  CategoryModel? migrateToModel(CategoryDto? dto) {
    return CategoryModel.createNamed(
      id: dto?.id,
      title: dto?.title,
      slogan: dto?.slogan,
      chidren: dto?.chidren?.map((e) => migrateToModel(e)!).toList(),
      salePercent: dto!.salePercent,
    );
  }
}
