import '/app/di/di_container.dart';
import '/data/migrations/bag_item_migrator.dart';
import '/app/services/abstraction/i_bag_service.dart';
import '/data/models/bag_item_model.dart';

class BagService extends IBagService {
  @override
  Future<List<BagItemModel?>?> getItems() async {
    final _itemsFromServer =
        await AppDiContainer.instance.bagNetworkManager.getItems();
    final _migrateditems = _itemsFromServer
        .map((e) => BagItemMigrator().migrateToModel(e))
        .toList();

    return _migrateditems;
  }
}
