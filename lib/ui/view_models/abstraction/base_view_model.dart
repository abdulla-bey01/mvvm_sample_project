import 'package:flutter/material.dart';
import '/app/start/mvvm_app.dart';

typedef UpdateUi = void Function(VoidCallback fn)?;
typedef ShowSnackBar = void Function(String content)?;

abstract class BaseViewModel {
  UpdateUi? updateUi;
  ShowSnackBar? showSnackBar(String content) {
    final SnackBar snackBar = SnackBar(
      content: Text(content),
    );
    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  BaseViewModel({
    this.updateUi,
  });
}
