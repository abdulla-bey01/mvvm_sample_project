import '/data/dtos/vendor_dto.dart';
import 'base_dto.dart';
import 'category_dto.dart';
import 'color_vs_attachment_dto.dart';

class ProductDto extends BaseDto {
  String? title;
  String? description;
  double? price;
  double? salePercent;
  int? raiting;
  VendorDto? vendor;
  int? ratedBy;
  List<CategoryDto?>? categories;
  List<ColorVsAttachmentDto?>? attachmentsWithColors;
  late bool favrotiedByUser;
  double get saledPrice => price! - ((price! * salePercent!) / 100);

  ProductDto.createNamed({
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
  static ProductDto copy(ProductDto old) {
    return ProductDto.createNamed(
      id: old.id,
      title: old.title,
      salePercent: old.salePercent,
      description: old.description,
      price: old.price,
      raiting: old.raiting,
      vendor: old.vendor,
      categories: old.categories,
      attachmentsWithColors: old.attachmentsWithColors,
    );
  }
}
