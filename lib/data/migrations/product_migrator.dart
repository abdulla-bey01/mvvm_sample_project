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
      raiting: model?.raiting,
      vendor: VendorMigrator().migrateToDto(model?.vendor),
      categories: model?.categories
          ?.map((e) => CategoryMigrator().migrateToDto(e))
          .toList(),
      attachmentsWithColors: model?.attachmentsWithColors
          ?.map((e) => ColorVsAttachmentMigrator().migrateToDto(e))
          .toList(),
      // attachments: model?.attachments
      //     ?.map((e) => AttachmentMigrator().migrateToDto(e))
      //     .toList(),
      // colors: model?.colors
      //     ?.map((e) => RgbColorMigrator().migrateToDto(e))
      //     .toList(),
    );
  }

  @override
  ProductModel? migrateToModel(ProductDto? dto) {
    return ProductModel.createNamed(
      id: dto?.id,
      title: dto?.title,
      description: dto?.description,
      price: dto?.price,
      raiting: dto?.raiting,
      vendor: VendorMigrator().migrateToModel(dto?.vendor),
      categories: dto?.categories
          ?.map((e) => CategoryMigrator().migrateToModel(e))
          .toList(),
      attachmentsWithColors: dto?.attachmentsWithColors
          ?.map((e) => ColorVsAttachmentMigrator().migrateToModel(e))
          .toList(),
      // attachments: dto?.attachments
      //     ?.map((e) => AttachmentMigrator().migrateToModel(e))
      //     .toList(),
      // colors: dto?.colors
      //     ?.map((e) => RgbColorMigrator().migrateToModel(e))
      //     .toList(),
    );
  }
}
