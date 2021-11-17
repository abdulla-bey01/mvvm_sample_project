import 'attachment_model.dart';
import 'base_model.dart';
import 'rgb_color_model.dart';

class ColorVsAttachmentModel extends BaseModel {
  final RgbColorModel? color;
  final AttachmentModel? attachment;

  ColorVsAttachmentModel.createNamed({
    required dynamic id,
    required this.color,
    required this.attachment,
  }) {
    id = id;
  }
}
