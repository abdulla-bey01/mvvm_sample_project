import '/ui/view_models/abstraction/i_categories_view_model.dart';
import 'base_view_model.dart';

abstract class IShopPageViewModel extends BaseViewModel {
  ICategoriesViewModel categoriesViewModel;
  IShopPageViewModel({
    required UpdateUi updateUi,
    required this.categoriesViewModel,
  }) : super(updateUi: updateUi);
}
