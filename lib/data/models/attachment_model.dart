import '/app/helpers/enums/attachment_type_enum.dart';
import 'base_model.dart';

class AttachmentModel extends BaseModel {
  final String? url;
  final AttachmentType? type;

  AttachmentModel.createNamed({
    required dynamic id,
    required this.url,
    required this.type,
  }) : super(id: id);
}
