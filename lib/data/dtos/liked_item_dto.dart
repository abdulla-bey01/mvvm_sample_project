import '/data/dtos/product_dto.dart';

class LikedItemDto {
  final ProductDto? product;
  bool? isExistedInStock;
  LikedItemDto.createNamed({required this.product, this.isExistedInStock = true});
}
