import '/app/commands/concrency/update_product_favority_command.dart';
import '/app/commands/concrency/pass_to_product_details_command.dart';
import '/app/commands/concrency/get_all_products_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '../abstraction/i_home_page_view_model.dart';

class HomePageViewModel extends IHomePageViewModel {
  HomePageViewModel({
    UpdateUi updateUi,
  }) : super(
          updateUi: updateUi,
          products: [],
          getAllProductsCommand: GetAllProductsCommand(),
          getAllProductsRequestState: RequestState.default_,
          passToProductDetailsCommand: PassToProductDetailsCommand(),
          updateProductFavorityCommand: UpdateProductFavorityCommand(),
        );

  @override
  void initialize() {
    if (getAllProductsRequestState == RequestState.default_) {
      getAllProductsCommand?.execute(this);
    }
  }
}
