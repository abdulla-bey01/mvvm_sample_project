import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/data/models/category_model.dart';
import '/data/models/liked_item_model.dart';
import 'base_view_model.dart';

abstract class ILikedPageViewModel extends BaseViewModel {
  RequestState getLikedItemsRequestState;
  late List<LikedItemModel?>? items;
  final IBaseCommand getLikedItemsCommand;
  final IBaseCommand removeItemCommand;
  ILikedPageViewModel({
    required UpdateUi updateUi,
    required this.getLikedItemsRequestState,
    required this.items,
    required this.getLikedItemsCommand,
    required this.removeItemCommand,
  }) : super(updateUi: updateUi);
  List<CategoryModel?> _getCategories() {
    List<CategoryModel?> _categories = [];

    items?.forEach(
      (likedItem) {
        likedItem?.product?.categories?.forEach(
          (category) => {
            if (!_categories.any((element) => element?.id == category?.id))
              {
                _categories.add(category),
              }
          },
        );
      },
    );
    return _categories;
  }

  List<CategoryModel?>? get categories => _getCategories();
}
