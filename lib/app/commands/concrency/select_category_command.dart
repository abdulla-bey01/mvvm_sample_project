import 'package:flutter/animation.dart';
import '/ui/view_models/concrency/categories_view_model.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class SelectCategoryCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {dynamic firstParameter, dynamic secondParameter}) {
    if (viewModel is! CategoriesViewModel) return;
    viewModel.categories?.map((e) => e?.selected = false).toList();
    final _category = viewModel.categories?[firstParameter];

    viewModel.pageController.animateToPage(firstParameter,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    _category?.selected = true;
    viewModel.selectedCategoryIndex = firstParameter;

    viewModel.updateUi!(() {});
  }
}
