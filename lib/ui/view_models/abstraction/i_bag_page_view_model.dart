import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/data/models/bag_item_model.dart';
import 'base_view_model.dart';

abstract class IBagPageViewModel extends BaseViewModel {
  late List<BagItemModel?>? items;
  RequestState getBagItemsRequestState;
  IBaseCommand getBagItemCommand;
  IBaseCommand updateItemCountInBagCommand;

  IBagPageViewModel({
    UpdateUi updateUi,
    required this.items,
    required this.getBagItemsRequestState,
    required this.getBagItemCommand,
    required this.updateItemCountInBagCommand,
  }) : super(updateUi: updateUi);

  double getTotalAmountOfItems() {
    double _total = 0.0;
    items?.map((e) => _total += e!.amount).toList();
    return _total;
  }
}
