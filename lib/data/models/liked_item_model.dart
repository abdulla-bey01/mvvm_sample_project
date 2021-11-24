import '/data/models/product_model.dart';

class LikedItemModel {
  final ProductModel? product;
  bool? isExistedInStock;
  LikedItemModel.createNamed({required this.product, this.isExistedInStock = true});
}
