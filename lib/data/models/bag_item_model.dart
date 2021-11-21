import 'base_model.dart';
import 'rgb_color_model.dart';

class BagItemModel extends BaseModel {
  final dynamic productId;
  final String productTitle;
  final double productPrice;
  final RgbColorModel color;
  final String productImageUrl;
  int? productNumericSize;
  String? productlAphabeticSize;

  int count;
  double get amount => productPrice * count;

  BagItemModel.createNamed({
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
