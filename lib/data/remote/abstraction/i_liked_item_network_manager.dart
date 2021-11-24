import '/data/dtos/liked_item_dto.dart';

abstract class ILikedItemsNetworkManager {
  Future<List<LikedItemDto>> getItems();
}