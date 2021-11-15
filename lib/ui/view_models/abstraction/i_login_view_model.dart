import 'package:flutter/material.dart';
import 'package:mvvm_simple/app/commands/abstraction/i_base_command.dart';
import 'package:mvvm_simple/app/models/login_model.dart';
import 'base_view_model.dart';

abstract class ILoginViewModel extends BaseViewModel {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  late IBaseCommand? loginCommand;
  late IBaseCommand? logOutCommand;
  late LoginModel loginModel;

  ILoginViewModel(
    UpdateUi updateUi,
    ShowSnackBar showSnackBar,
    this.usernameController,
    this.passwordController, {
    required this.loginModel,
    required this.loginCommand,
    required this.logOutCommand,
  }) : super(updateUi, showSnackBar);
}
