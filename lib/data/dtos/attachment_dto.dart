import '/app/helpers/enums/attachment_type_enum.dart';

import 'base_dto.dart';

class AttachmentDto extends BaseDto {
  final String? url;
  final AttachmentType? type;

  AttachmentDto.createNamed({
    required dynamic id,
    required this.url,
    required this.type,
  }) {
    id = id;
  }
}
