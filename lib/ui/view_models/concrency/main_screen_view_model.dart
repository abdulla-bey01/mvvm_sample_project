import '/app/commands/concrency/pass_to_product_details_command.dart';
import '/app/commands/concrency/get_all_products_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';

class MainScreenViewModel extends IMainScreenViewModel {
  MainScreenViewModel({
    required UpdateUi updateUi,
    required ShowSnackBar showSnackBar,
  }) : super(
          updateUi: updateUi,
          showSnackBar: showSnackBar,
          products: [],
          getAllProductsCommand: GetAllProductsCommand(),
          getAllProductsRequestState: RequestState.default_,
          passToProductDetailsCommand: PassToProductDetailsCommand(),
        ) {
    if (getAllProductsRequestState == RequestState.default_) {
      getAllProductsCommand?.execute(this);
    }
  }
}
