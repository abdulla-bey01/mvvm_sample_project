import 'package:flutter/material.dart';
import '/data//models/login_model.dart';
import '../../../app/commands/concrency/login_command.dart';
import '../../../app/commands/concrency/logout_command.dart';
import '../abstraction/base_view_model.dart';
import '../abstraction/i_login_view_model.dart';

class LoginViewModel extends ILoginViewModel {
  LoginViewModel({
    required UpdateUi updateUi,
  }) : super(
          updateUi,
          TextEditingController(text: 'eve.holt@reqres.in'),
          TextEditingController(text: 'pistol'),
          loginModel: LoginModel(),
          loginCommand: LoginCommand(),
          logOutCommand: LogOutCommand(),
        ) {
    emailController.addListener(() {
      loginModel.email = emailController.text;
    });
    passwordController.addListener(() {
      loginModel.password = passwordController.text;
    });
  }

  @override
  void initialize() {}
}
