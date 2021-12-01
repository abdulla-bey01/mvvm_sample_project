import '/data/migrations/liked_item_migrator.dart';
import '/data/models/liked_item_model.dart';
import '/app/services/abstraction/i_liked_items_service.dart';
import '/app/di/di_container.dart';

class LikedItemsService extends ILikedItemsService {
  @override
  Future<List<LikedItemModel?>?> getItems() async {
    final _itemsFromServer =
        await AppDiContainer.instance.likedItemsNetworkManager.getItems();
    final _migrateditems = _itemsFromServer
        .map((e) => LikedItemMigrator().migrateToModel(e))
        .toList();

    return _migrateditems;
  }
}