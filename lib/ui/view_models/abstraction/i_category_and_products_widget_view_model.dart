import 'base_view_model.dart';
import 'i_home_page_view_model.dart';

abstract class ICategoryAndProductsWidgetViewModel extends BaseViewModel {
  ICategoryAndProductsWidgetViewModel({
    required UpdateUi updateUi,
    required this.homePageViewModel,
  }) : super(updateUi: updateUi);
  IHomePageViewModel homePageViewModel;
}
