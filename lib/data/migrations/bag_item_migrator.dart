import '/data/dtos/bag_item_dto.dart';
import '/data/migrations/rgb_color_migrator.dart';
import '/data/models/bag_item_model.dart';
import 'migrator.dart';

class BagItemMigrator extends Migrator<BagItemModel, BagItemDto> {
  @override
  BagItemDto? migrateToDto(BagItemModel? model) {
    return BagItemDto.createNamed(
      id: model?.id,
      productId: model?.productId,
      productTitle: model!.productTitle,
      productPrice: model.productPrice,
      color: RgbColorMigrator().migrateToDto(model.color)!,
      productImageUrl: model.productImageUrl,
      count: model.count,
      productlAphabeticSize: model.productlAphabeticSize,
      productNumericSize: model.productNumericSize,
    );
  }

  @override
  BagItemModel? migrateToModel(BagItemDto? dto) {
    return BagItemModel.createNamed(
      id: dto?.id,
      productId: dto?.productId,
      productTitle: dto!.productTitle,
      productPrice: dto.productPrice,
      color: RgbColorMigrator().migrateToModel(dto.color)!,
      productImageUrl: dto.productImageUrl,
      count: dto.count,
      productlAphabeticSize: dto.productlAphabeticSize,
      productNumericSize: dto.productNumericSize,
    );
  }
}
