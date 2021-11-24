import 'base_view_model.dart';
import 'i_main_screen_view_model.dart';

abstract class IBottomNavigationBarViewModel extends BaseViewModel {
  IBottomNavigationBarViewModel({required this.mainScreenViewModel})
      : super();
  final IMainScreenViewModel mainScreenViewModel;
}
