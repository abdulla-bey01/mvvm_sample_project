import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/concrency/bag_page_view_model.dart';

class UpdateItemCountInBagCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel, {firstParameter, secondParameter}) {
    if (viewModel is! BagPageViewModel) return;
    final _item =
        viewModel.items?.firstWhere((element) => element?.id == firstParameter);
    _item?.count += int.tryParse(secondParameter.toString())!;
    if (_item?.count == 0) viewModel.items?.remove(_item);
    viewModel.updateUi!(() {});
  }
}
