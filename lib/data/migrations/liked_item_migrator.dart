import '/data/dtos/liked_item_dto.dart';
import '/data/migrations/product_migrator.dart';
import '/data/models/liked_item_model.dart';
import 'migrator.dart';

class LikedItemMigrator extends Migrator<LikedItemModel, LikedItemDto> {
  @override
  LikedItemDto? migrateToDto(LikedItemModel? model) {
    return LikedItemDto.createNamed(
      product: ProductMigrator().migrateToDto(model?.product),
      isExistedInStock: model?.isExistedInStock,
    );
  }

  @override
  LikedItemModel? migrateToModel(LikedItemDto? dto) {
    return LikedItemModel.createNamed(
      product: ProductMigrator().migrateToModel(dto?.product),
      isExistedInStock: dto?.isExistedInStock,
    );
  }
}
