import 'base_dto.dart';
import 'rgb_color_dto.dart';

class BagItemDto extends BaseDto {
  final dynamic productId;
  final String productTitle;
  final double productPrice;
  final RgbColorDto color;
  final String productImageUrl;
  int? productNumericSize;
  String? productlAphabeticSize;

  int count;
  double get amount => productPrice * count;

  BagItemDto.createNamed({
    required dynamic id,
    required this.productId,
    required this.productTitle,
    required this.productPrice,
    required this.color,
    required this.productImageUrl,
    this.productlAphabeticSize,
    this.productNumericSize,
    this.count = 1,
  }) : super(id: id);
}
