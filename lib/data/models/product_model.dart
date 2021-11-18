import 'color_vs_attachment_model.dart';
import 'vendor_model.dart';
import 'base_model.dart';
import 'category_model.dart';

class ProductModel extends BaseModel {
  final String? title;
  final String? description;
  final double? price;
  final double? saledPrice;
  final int? raiting;
  final VendorModel? vendor;
  final List<CategoryModel?>? categories;
  final List<ColorVsAttachmentModel?>? attachmentsWithColors;
  final int? ratedBy;
  late bool favrotiedByUser;

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
    this.saledPrice = 0,
    this.favrotiedByUser = false,
  }) : super(id: id);
}
