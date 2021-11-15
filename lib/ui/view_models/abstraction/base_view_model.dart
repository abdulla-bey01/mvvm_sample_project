import 'package:flutter/material.dart';

typedef UpdateUi = void Function(VoidCallback fn);
typedef ShowSnackBar = void Function(String content);

abstract class BaseViewModel {
  UpdateUi? updateUi;
  ShowSnackBar? showSnackBar;
  BaseViewModel({
    this.updateUi,
    this.showSnackBar,
  });
}
