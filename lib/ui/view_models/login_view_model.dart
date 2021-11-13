import 'package:flutter/material.dart';
import '../../app/models/login_model.dart';
import '../../app/services/local_token_service.dart';
import '../../app/services/login_service.dart';
import 'package:uuid/uuid.dart';
import 'base_view_model.dart';
import 'i_login_view_model.dart';

class LoginViewModel extends ILoginViewModel {
  LoginViewModel({
    required UpdateUi updateUi,
    required ShowSnackBar showSnackBar,
  }) : super(
          updateUi,
          showSnackBar,
          LogInRequestService(),
          LocalTokenService(),
          TextEditingController(),
          TextEditingController(),
        );

  @override
  Future<void> logIn() async {
    LoginModel _model = LoginModel.createNamed(
      id: const Uuid().v1().toString(),
      username: usernameController.text,
      password: passwordController.text,
    );

    final _loginedUser = await logInRequestService.logIn(_model);
    if (_loginedUser != null) {
      '${_loginedUser.username} logined succesfully';
    } else {
      'user could not login';
      return;
    }

    final _token = _loginedUser.id.toString();
    final _tokenIsSaved = await localTokenService.save(token: _token);
    if (_tokenIsSaved) {
      debugPrint('token of ${_loginedUser.username} is saved succesfully');
    } else {
      debugPrint('token of ${_loginedUser.username} could not be saved');
    }
  }

  @override
  Future<void> logOut() async {
    final _tokenIsRemoved = await localTokenService.remove();
    if (_tokenIsRemoved) {
      debugPrint('token is removed succesfully');
    } else {
      debugPrint('token could not be removed');
    }
  }
}
