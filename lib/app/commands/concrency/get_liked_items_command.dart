import '/app/services/abstraction/i_liked_items_service.dart';
import '/app/services/concrency/liked_items_service.dart';
import '/ui/view_models/concrency/liked_page_view_model.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class GetLikedItemsCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {firstParameter, secondParameter}) async {
    if (viewModel is! LikedPageViewModel) return;
    ILikedItemsService _likedItemsService = LikedItemsService();
    try {
      final _items = await _likedItemsService.getItems();
      viewModel.items = _items;
      viewModel.getLikedItemsRequestState = RequestState.successfull;
    } catch (e) {
      viewModel.getLikedItemsRequestState = RequestState.unsuccesfull;
    } finally {
      viewModel.updateUi!(() {});
    }
  }
}
