import '/app/helpers/enums/request_state_enum.dart';
import '/app/services/abstraction/i_bag_service.dart';
import '/app/services/concrency/bag_service.dart';
import '/ui/view_models/concrency/bag_page_view_model.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class GetBagItemsCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {firstParameter, secondParameter}) async {
    if (viewModel is! BagPageViewModel) return;
    IBagService _bagService = BagService();
    try {
      final _items = await _bagService.getItems();
      viewModel.items = _items;
      viewModel.getBagItemsRequestState = RequestState.successfull;
    } catch (e) {
      viewModel.getBagItemsRequestState = RequestState.unsuccesfull;
    } finally {
      viewModel.updateUi!(() {});
    }
  }
}
