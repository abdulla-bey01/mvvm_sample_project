import 'package:flutter/material.dart';

typedef UpdateUi = void Function(VoidCallback fn);
typedef ShowSnackBar = void Function(String content);

abstract class BaseViewModel {
  final UpdateUi updateUi;
  final ShowSnackBar showSnackBar;
  BaseViewModel(this.updateUi, this.showSnackBar,);
}
