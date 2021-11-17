import '/data/dtos/vendor_dto.dart';
import 'base_dto.dart';
import 'category_dto.dart';
import 'color_vs_attachment_dto.dart';

class ProductDto extends BaseDto {
  final String? title;
  final String? description;
  final double? price;
  final int? raiting;
  final VendorDto? vendor;
  // final List<AttachmentDto?>? attachments;
  // final List<RgbColorDto?>? colors;
  final List<CategoryDto?>? categories;
  final List<ColorVsAttachmentDto?>? attachmentsWithColors;
  ProductDto.createNamed({
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
