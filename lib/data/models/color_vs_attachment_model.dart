import 'attachment_model.dart';
import 'base_model.dart';
import 'rgb_color_model.dart';

class ColorVsAttachmentModel extends BaseModel {
  final RgbColorModel? color;
  final List<AttachmentModel> attachments;

  ColorVsAttachmentModel.createNamed({
    required dynamic id,
    required this.color,
    required this.attachments,
  }) : super(id: id);
}
