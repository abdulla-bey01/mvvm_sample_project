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
                'https://instagram.fgyd6-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/228640666_224555699564584_3086103443573315044_n.jpg?_nc_ht=instagram.fgyd6-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=njgQNyri4hoAX8KgpXv&edm=AABBvjUBAAAA&ccb=7-4&oh=937407f3c1181fe427efc91c8449e76b&oe=61A649CD&_nc_sid=83d603',
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
