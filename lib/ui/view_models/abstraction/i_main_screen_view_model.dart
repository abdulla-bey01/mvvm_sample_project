import 'package:flutter/material.dart';
import '/app/commands/abstraction/i_base_command.dart';
import 'base_view_model.dart';

abstract class IMainScreenViewModel extends BaseViewModel {
  int navBarIndex;
  PageController pageController;
  IBaseCommand changePageCommand;
  IMainScreenViewModel({
    required UpdateUi updateUi,
    required this.navBarIndex,
    required this.pageController,
    required this.changePageCommand,
  }) : super(updateUi: updateUi);
  void onPageChanged(int index) {
    updateUi!(() {
      navBarIndex = index;
    });
  }
}
