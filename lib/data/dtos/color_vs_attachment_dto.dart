import 'attachment_dto.dart';
import 'base_dto.dart';
import 'rgb_color_dto.dart';

class ColorVsAttachmentDto extends BaseDto {
  final RgbColorDto? color;
  final AttachmentDto? attachment;

  ColorVsAttachmentDto.createNamed({
    required dynamic id,
    required this.color,
    required this.attachment,
  }) {
    id = id;
  }
}
