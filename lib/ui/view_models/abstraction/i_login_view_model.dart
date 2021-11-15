import 'package:flutter/material.dart';
import '../../../app/commands/abstraction/i_base_command.dart';
import '../../../app/helpers/enums/request_state_enum.dart';
import '../../../app/models/login_model.dart';
import 'base_view_model.dart';

abstract class ILoginViewModel extends BaseViewModel {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  late IBaseCommand? loginCommand;
  late IBaseCommand? logOutCommand;
  late LoginModel loginModel;
  RequestState loginState;

  ILoginViewModel(
    UpdateUi updateUi,
    ShowSnackBar showSnackBar,
    this.usernameController,
    this.passwordController, {
    required this.loginModel,
    required this.loginCommand,
    required this.logOutCommand,
    this.loginState = RequestState.default_,
  }) : super(updateUi: updateUi, showSnackBar: showSnackBar);
}
