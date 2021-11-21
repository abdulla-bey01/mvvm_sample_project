import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/concrency/main_screen_view_model.dart';

class ChangePageCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {dynamic firstParameter, dynamic secondParameter}) {
    if (viewModel is! MainScreenViewModel) return;
    viewModel.updateUi!(() {
      viewModel.navBarIndex = firstParameter!;
    });
  }
}
