import '/app/commands/concrency/remove_liked_item_command.dart';
import '/app/commands/concrency/get_liked_items_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_liked_page_view_model.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class LikedPageViewModel extends ILikedPageViewModel {
  LikedPageViewModel({UpdateUi updateUi})
      : super(
          updateUi: updateUi,
          getLikedItemsRequestState: RequestState.default_,
          items: [],
          getLikedItemsCommand: GetLikedItemsCommand(),
          removeItemCommand: RemoveLikedItemCommand(),
        );

  @override
  void initialize() {
    if (getLikedItemsRequestState == RequestState.default_) {
      getLikedItemsCommand.execute(this);
    }
  }
}
