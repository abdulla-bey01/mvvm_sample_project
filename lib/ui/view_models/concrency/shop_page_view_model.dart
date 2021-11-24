import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/concrency/categories_view_model.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_shop_page_view_model.dart';

class ShopPageViewModel extends IShopPageViewModel {
  ShopPageViewModel({UpdateUi updateUi})
      : super(updateUi: updateUi, categoriesViewModel: CategoriesViewModel());

  @override
  void initialize() {
    if (categoriesViewModel.getAllCategoriesRequestState ==
        RequestState.default_) {
      categoriesViewModel.getAllCategoriesCommand?.execute(categoriesViewModel);
    }
  }
}
