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
      color: RgbColorMigrator().migrateToDto(model?.color),
      attachments: model!.attachments
          .map((e) => AttachmentMigrator().migrateToDto(e))
          .toList(),
    );
  }

  @override
  ColorVsAttachmentModel? migrateToModel(ColorVsAttachmentDto? dto) {
    return ColorVsAttachmentModel.createNamed(
      id: dto?.id,
      color: RgbColorMigrator().migrateToModel(dto?.color),
      attachments: dto!.attachments
          .map((e) => AttachmentMigrator().migrateToModel(e))
          .toList(),
    );
  }
}
