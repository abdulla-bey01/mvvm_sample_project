import '/data/models/bag_item_model.dart';

abstract class IBagService {
  Future<List<BagItemModel?>?> getItems();
}