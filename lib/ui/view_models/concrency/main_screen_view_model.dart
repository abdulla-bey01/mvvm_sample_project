import 'package:flutter/material.dart';
import '/app/commands/concrency/on_click_nav_bar_item_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';

class MainScreenViewModel extends IMainScreenViewModel {
  MainScreenViewModel({
    required UpdateUi updateUi,
  }) : super(
          navBarIndex: 0,
          pageController: PageController(),
          onClickNavBarItemCommand: OnClickNavBarItemCommand(),
          updateUi: updateUi,
        );
}
