import '/data/models/category_model.dart';

import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/data/models/product_model.dart';

import 'base_view_model.dart';

abstract class IHomePageViewModel extends BaseViewModel {
  IHomePageViewModel({
    UpdateUi updateUi,
    required this.products,
    required this.getAllProductsCommand,
    required this.getAllProductsRequestState,
    required this.updateProductFavorityCommand,
    this.passToProductDetailsCommand,
  }) : super(updateUi: updateUi);

  late List<ProductModel?>? products;
  late IBaseCommand? getAllProductsCommand;
  late IBaseCommand? passToProductDetailsCommand;
  late IBaseCommand? updateProductFavorityCommand;
  late dynamic idOfProductUserWantToSetFavorite;
  RequestState getAllProductsRequestState;
  ProductModel? get mostFamousProduct => products![0];
  List<CategoryModel?> _getCategories() {
    List<CategoryModel?> _categories = [];
    products?.forEach((element) {
      element?.categories?.forEach((category) {
        if (!_categories.any((element) => element?.id == category?.id)) {
          _categories.add(category);
        }
      });
    });
    return _categories;
  }

  List<CategoryModel?>? get categories => _getCategories();
}
