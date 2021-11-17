import 'package:flutter/material.dart';
import '/data//models/login_model.dart';
import '/app/commands/abstraction/i_base_command.dart';
import 'base_view_model.dart';

abstract class ILoginViewModel extends BaseViewModel {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  late IBaseCommand? loginCommand;
  late IBaseCommand? logOutCommand;
  late LoginModel loginModel;

  ILoginViewModel(
    UpdateUi updateUi,
    ShowSnackBar showSnackBar,
    this.emailController,
    this.passwordController, {
    required this.loginModel,
    required this.loginCommand,
    required this.logOutCommand,
  }) : super(updateUi: updateUi, showSnackBar: showSnackBar);
}
