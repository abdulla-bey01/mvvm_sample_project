import '/ui/view_models/concrency/categories_view_model.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_shop_page_view_model.dart';

class ShopPageViewModel extends IShopPageViewModel {
  ShopPageViewModel({UpdateUi updateUi})
      : super(
          updateUi: updateUi,
          categoriesViewModel: CategoriesViewModel(),
        );

  @override
  set updateUi(UpdateUi updateUi) {
    this.updateUi = updateUi;
    categoriesViewModel.updateUi = updateUi;
  }
}
