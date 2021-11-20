import '/ui/view_models/abstraction/i_home_page_view_model.dart';
import '/data/models/product_model.dart';
import 'base_view_model.dart';

class IProductViewModel extends BaseViewModel {
  IProductViewModel({
    required UpdateUi updateUi,
    required this.product,
    required this.homePageViewModel,
  }) : super(updateUi: updateUi);
  late ProductModel product;
  late IHomePageViewModel homePageViewModel;
  void updateProductFavority(dynamic id) {
    homePageViewModel.updateProductFavorityCommand
        ?.execute(homePageViewModel, firstParameter: id);
  }
}
