import '/data/models/liked_item_model.dart';

abstract class ILikedItemsService {
  Future<List<LikedItemModel?>?> getItems();
}