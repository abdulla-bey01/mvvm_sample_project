import '/data/dtos/vendor_dto.dart';
import 'base_dto.dart';
import 'category_dto.dart';
import 'color_vs_attachment_dto.dart';

class ProductDto extends BaseDto {
  final String? title;
  final String? description;
  final double? price;
  final double? saledPrice;
  final int? raiting;
  final VendorDto? vendor;
  final int? ratedBy;
  final List<CategoryDto?>? categories;
  final List<ColorVsAttachmentDto?>? attachmentsWithColors;
  late bool favrotiedByUser;
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
    this.saledPrice = 0,
    this.favrotiedByUser = false,
  }) : super(id: id);
}
