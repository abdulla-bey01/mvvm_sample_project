import 'color_vs_attachment_model.dart';
import 'vendor_model.dart';
import 'base_model.dart';
import 'category_model.dart';

class ProductModel extends BaseModel {
  final String? title;
  final String? description;
  final double? price;
  final int? raiting;
  final VendorModel? vendor;
  final List<CategoryModel?>? categories;
  final List<ColorVsAttachmentModel?>? attachmentsWithColors;

  // final List<AttachmentModel?>? attachments;
  // final List<RgbColorModel?>? colors;

  ProductModel.createNamed({
    required dynamic id,
    required this.title,
    required this.description,
    required this.price,
    required this.raiting,
    required this.vendor,
    required this.categories,
    required this.attachmentsWithColors,
    // required this.attachments,
    // required this.colors,
  }) {
    id = id;
  }
}
