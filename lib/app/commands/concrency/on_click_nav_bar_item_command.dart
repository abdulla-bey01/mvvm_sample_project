import 'package:flutter/animation.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/concrency/main_screen_view_model.dart';

class OnClickNavBarItemCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel) {
    if (viewModel is! MainScreenViewModel) return;
    viewModel.pageController.animateToPage(
      viewModel.clickedOnIndex!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    viewModel.updateUi!(() {
      viewModel.navBarIndex = viewModel.clickedOnIndex!;
    });
  }
}
