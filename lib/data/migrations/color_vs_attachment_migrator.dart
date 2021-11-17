import '/data/dtos/color_vs_attachment_dto.dart';
import '/data/migrations/attachment_migrator.dart';
import '/data/migrations/migrator.dart';
import '/data/migrations/rgb_color_migrator.dart';
import '/data/models/color_vs_attachment_model.dart';

class ColorVsAttachmentMigrator
    extends Migrator<ColorVsAttachmentModel, ColorVsAttachmentDto> {
  @override
  ColorVsAttachmentDto? migrateToDto(ColorVsAttachmentModel? model) {
    return ColorVsAttachmentDto.createNamed(
      id: model?.id,
      attachment: AttachmentMigrator().migrateToDto(model?.attachment),
      color: RgbColorMigrator().migrateToDto(model?.color),
    );
  }

  @override
  ColorVsAttachmentModel? migrateToModel(ColorVsAttachmentDto? dto) {
    return ColorVsAttachmentModel.createNamed(
      id: dto?.id,
      attachment: AttachmentMigrator().migrateToModel(dto?.attachment),
      color: RgbColorMigrator().migrateToModel(dto?.color),
    );
  }
}
