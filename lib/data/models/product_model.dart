import 'color_vs_attachment_model.dart';
import 'vendor_model.dart';
import 'base_model.dart';
import 'category_model.dart';

class ProductModel extends BaseModel {
  final String? title;
  final String? description;
  final double? price;
  final double? salePercent;
  final int? raiting;
  final VendorModel? vendor;
  final List<CategoryModel?>? categories;
  final List<ColorVsAttachmentModel?>? attachmentsWithColors;
  final int? ratedBy;
  late bool favrotiedByUser;
  double? get saledPrice => (salePercent == null || salePercent == 0)
      ? null
      : price! - ((price! * salePercent!) / 100);

  ProductModel.createNamed({
    required dynamic id,
    required this.title,
    required this.description,
    required this.price,
    required this.raiting,
    required this.vendor,
    required this.categories,
    required this.attachmentsWithColors,
    this.ratedBy = 0,
    this.salePercent = 0,
    this.favrotiedByUser = false,
  }) : super(id: id);
}
