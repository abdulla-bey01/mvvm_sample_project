import '/data/dtos/attachment_dto.dart';
import '/data/models/attachment_model.dart';
import 'migrator.dart';

class AttachmentMigrator extends Migrator<AttachmentModel, AttachmentDto> {
  @override
  AttachmentDto? migrateToDto(AttachmentModel? model) {
    return AttachmentDto.createNamed(
      id: model?.id,
      url: model?.url,
      type: model?.type,
    );
  }

  @override
  AttachmentModel? migrateToModel(AttachmentDto? dto) {
    return AttachmentModel.createNamed(
      id: dto?.id,
      url: dto?.url,
      type: dto?.type,
    );
  }
}
