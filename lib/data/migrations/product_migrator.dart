import '/data/migrations/color_vs_attachment_migrator.dart';
import '/data/migrations/vendor_migrator.dart';
import '/data/dtos/product_dto.dart';
import '/data/models/product_model.dart';
import 'category_migrator.dart';
import 'migrator.dart';

class ProductMigrator extends Migrator<ProductModel, ProductDto> {
  @override
  ProductDto? migrateToDto(ProductModel? model) {
    return ProductDto.createNamed(
      id: model?.id,
      title: model?.title,
      description: model?.description,
      price: model?.price,
      saledPrice: model?.saledPrice,
      raiting: model?.raiting,
      vendor: VendorMigrator().migrateToDto(model?.vendor),
      ratedBy: model?.ratedBy,
      favrotiedByUser: model!.favrotiedByUser,
      categories: model.categories
          ?.map((e) => CategoryMigrator().migrateToDto(e))
          .toList(),
      attachmentsWithColors: model.attachmentsWithColors
          ?.map((e) => ColorVsAttachmentMigrator().migrateToDto(e))
          .toList(),
    );
  }

  @override
  ProductModel? migrateToModel(ProductDto? dto) {
    return ProductModel.createNamed(
      id: dto?.id,
      title: dto?.title,
      description: dto?.description,
      price: dto?.price,
      saledPrice: dto?.saledPrice,
      raiting: dto?.raiting,
      vendor: VendorMigrator().migrateToModel(dto?.vendor),
      ratedBy: dto?.ratedBy,
      favrotiedByUser: dto!.favrotiedByUser,
      categories: dto.categories
          ?.map((e) => CategoryMigrator().migrateToModel(e))
          .toList(),
      attachmentsWithColors: dto.attachmentsWithColors
          ?.map((e) => ColorVsAttachmentMigrator().migrateToModel(e))
          .toList(),
    );
  }
}
