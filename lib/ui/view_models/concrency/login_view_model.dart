import 'package:flutter/material.dart';
import 'package:mvvm_simple/app/commands/concrency/login_command.dart';
import 'package:mvvm_simple/app/commands/concrency/logout_command.dart';
import '../../../app/models/login_model.dart';
import '../abstraction/base_view_model.dart';
import '../abstraction/i_login_view_model.dart';

class LoginViewModel extends ILoginViewModel {
  LoginViewModel({
    required UpdateUi updateUi,
    required ShowSnackBar showSnackBar,
  }) : super(
          updateUi,
          showSnackBar,
          // LogInRequestService(),
          // LocalTokenService(),
          TextEditingController(),
          TextEditingController(),
          loginModel: LoginModel(null, null, null),
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
