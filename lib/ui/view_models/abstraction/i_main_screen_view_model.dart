import 'package:flutter/material.dart';
import '/app/commands/abstraction/i_base_command.dart';
import 'base_view_model.dart';

class IMainScreenViewModel extends BaseViewModel {
  int navBarIndex;
  int? clickedOnIndex;
  PageController pageController;
  IBaseCommand onClickNavBarItemCommand;
  IMainScreenViewModel({
    required UpdateUi updateUi,
    required this.navBarIndex,
    required this.pageController,
    required this.onClickNavBarItemCommand,
  }) : super(updateUi: updateUi);
}
