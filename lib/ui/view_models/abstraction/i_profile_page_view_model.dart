import '/app/helpers/models/menu_item_model.dart';
import '/data/models/user_info_model.dart';
import 'base_view_model.dart';

abstract class IProfilePageViewModel extends BaseViewModel {
  late UserInfoModel userInfo;
  late List<MenuItemModel> menuItems;
  IProfilePageViewModel({
    required UpdateUi updateUi,
    required this.userInfo,
  }) : super(updateUi: updateUi);
}
