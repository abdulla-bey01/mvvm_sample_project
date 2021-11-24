import '/ui/view_models/concrency/liked_page_view_model.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class RemoveLikedItemCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel, {firstParameter, secondParameter}) {
    if (viewModel is! LikedPageViewModel) return;
    try {
      viewModel.items
          ?.removeWhere((element) => element?.product?.id == firstParameter);
    } catch (e) {
      viewModel.showSnackBar('sorry, liked item can not be removed');
    } finally {
      viewModel.updateUi!(() {});
    }
  }
}
