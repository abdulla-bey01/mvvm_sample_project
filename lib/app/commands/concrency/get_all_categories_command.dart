import '/ui/view_models/concrency/categories_view_model.dart';
import '/app/reactive_helper_models/reactive_category_model.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/app/services/abstraction/i_category_service.dart';
import '/app/services/concrency/category_service.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class GetAllCategoriesCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {dynamic firstParameter, dynamic secondParameter}) async {
    if (viewModel is! CategoriesViewModel) return;
    ICategoryService _categoryService = CategoryService();
    try {
      final _categories = await _categoryService.getAll();
      viewModel.categories = _categories
          ?.map((e) => ReactiveCategoryModel(base: e, selected: false))
          .toList();
      viewModel.categories?[0]?.selected = true;
      viewModel.getAllCategoriesRequestState = RequestState.successfull;
    } catch (e) {
      viewModel.getAllCategoriesRequestState = RequestState.unsuccesfull;
    } finally {
      viewModel.updateUi!(() {});
    }
  }
}
