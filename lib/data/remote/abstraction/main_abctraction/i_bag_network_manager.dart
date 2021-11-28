import '/data/dtos/bag_item_dto.dart';

abstract class IBagNetworkManager{
  Future<List<BagItemDto>> getItems();
}