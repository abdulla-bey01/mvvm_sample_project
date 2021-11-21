import '/ui/view_models/abstraction/i_home_page_view_model.dart';

import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_category_and_products_widget_view_model.dart';

class CategoryAndProductsWidgetViewModel
    extends ICategoryAndProductsWidgetViewModel {
  CategoryAndProductsWidgetViewModel({
    UpdateUi updateUi,
    required IHomePageViewModel homePageViewModel,
  }) : super(
          updateUi: updateUi,
          homePageViewModel: homePageViewModel,
        );
}
