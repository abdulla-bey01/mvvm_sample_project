import 'package:flutter/material.dart';
import '/data//models/login_model.dart';
import '../../../app/commands/concrency/login_command.dart';
import '../../../app/commands/concrency/logout_command.dart';
import '../abstraction/base_view_model.dart';
import '../abstraction/i_login_view_model.dart';

class LoginViewModel extends ILoginViewModel {
  LoginViewModel({
    required UpdateUi updateUi,
    required ShowSnackBar showSnackBar,
  }) : super(
          updateUi,
          showSnackBar,
          TextEditingController(),
          TextEditingController(),
          loginModel: LoginModel(),
          loginCommand: LoginCommand(),
          logOutCommand: LogOutCommand(),
        ) {
    usernameController.addListener(() {
      loginModel.username = usernameController.text;
    });
    passwordController.addListener(() {
      loginModel.password = passwordController.text;
    });
  }
}
