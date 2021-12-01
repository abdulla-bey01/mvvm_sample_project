import '/app/helpers/models/menu_item_model.dart';
import '/data/models/user_info_model.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_profile_page_view_model.dart';

class ProfilePageViewModel extends IProfilePageViewModel {
  ProfilePageViewModel({
    UpdateUi updateUi,
  }) : super(
          updateUi: updateUi,
          userInfo: UserInfoModel.createNamed(
            fullname: 'Saleh Abdullabayli',
            email: 'abdullabey085@gmail.com',
            imgUrl:
                'https://instagram.fgyd6-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/130735229_867525813990164_2412543950319125945_n.jpg?_nc_ht=instagram.fgyd6-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=LJheycjER_0AX-fa7A4&edm=AP_V10EBAAAA&ccb=7-4&oh=fa2cd3eed12a8dafeee4df4bef38aafc&oe=61AF3B6D&_nc_sid=4f375e',
          ),
        );

  @override
  void initialize() {
    menuItems = [
      MenuItemModel.createNamed(
        title: 'My orders',
        subtext: 'Already have 13 orders',
      ),
      MenuItemModel.createNamed(
        title: 'Shipping adresses',
        subtext: '3 Adresses',
      ),
      MenuItemModel.createNamed(
        title: 'Payment methods',
        subtext: 'Visa **** **** **** 2901',
      ),
      MenuItemModel.createNamed(
        title: 'Promocodes',
        subtext: 'You have special promocodes',
      ),
      MenuItemModel.createNamed(
        title: 'My reviews',
        subtext: 'Reviews for 13 items',
      ),
      MenuItemModel.createNamed(
        title: 'Settings',
        subtext: 'Notifications, password',
      ),
    ];
  }
}
