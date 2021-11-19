import '/ui/view_models/concrency/home_page_view_model.dart';

import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class UpdateProductFavorityCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel) {
    if (viewModel is! HomePageViewModel) return;
    if (!canExecute(null)) return;
    var _product = viewModel.products?.firstWhere(
        (element) => element?.id == viewModel.idOfProductUserWantToSetFavorite);
    _product?.favrotiedByUser = !_product.favrotiedByUser;
  }
}
