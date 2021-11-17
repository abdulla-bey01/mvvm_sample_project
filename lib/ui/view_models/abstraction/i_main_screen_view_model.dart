import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/data/models/product_model.dart';

import 'base_view_model.dart';

abstract class IMainScreenViewModel extends BaseViewModel {
  IMainScreenViewModel({
    required UpdateUi updateUi,
    required ShowSnackBar showSnackBar,
    required this.products,
    required this.getAllProductsCommand,
    required this.getAllProductsRequestState,
    this.passToProductDetailsCommand,
  }) : super(updateUi: updateUi, showSnackBar: showSnackBar);
  late List<ProductModel?>? products;
  late IBaseCommand? getAllProductsCommand;
  late IBaseCommand? passToProductDetailsCommand;
  RequestState getAllProductsRequestState;
}
