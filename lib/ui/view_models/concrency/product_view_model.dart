import '/data/models/product_model.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_home_page_view_model.dart';

import '/ui/view_models/abstraction/i_product_view_model.dart';

class ProductViewModel extends IProductViewModel {
  ProductViewModel({
    required UpdateUi updateUi,
    required IHomePageViewModel homePageViewModel,
    required ProductModel product,
  }) : super(
          updateUi: updateUi,
          homePageViewModel: homePageViewModel,
          product: product,
        );

  @override
  void initialize() {}
}
