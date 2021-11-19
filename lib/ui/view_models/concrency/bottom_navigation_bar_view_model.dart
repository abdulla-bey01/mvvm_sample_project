import '/ui/view_models/abstraction/i_main_screen_view_model.dart';

import '/ui/view_models/abstraction/i_bottom_navigation_bar_view_model.dart';

class BottomNavigationBarViewModel extends IBottomNavigationBarViewModel {
  BottomNavigationBarViewModel(
      {required IMainScreenViewModel mainScreenViewModel})
      : super(mainScreenViewModel: mainScreenViewModel);
}
