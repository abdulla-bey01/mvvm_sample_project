import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/app/services/abstraction/i_product_service.dart';
import '/app/services/concrency/product_service.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '../../../ui/view_models/concrency/home_page_view_model.dart';

class GetAllProductsCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {dynamic firstParameter, dynamic secondParameter}) async {
    if (viewModel is! HomePageViewModel) return;
    IProductsService _productService = ProductsService();
    try {
      final _products = await _productService.getAll();
      viewModel.updateUi!(() {
        viewModel.products = _products;
        viewModel.getAllProductsRequestState = RequestState.successfull;
      });
    } catch (e) {
      viewModel.updateUi!(() {
        viewModel.getAllProductsRequestState = RequestState.unsuccesfull;
      });
    }
  }
}
