import 'package:flutter/material.dart';
import 'package:mvvm_simple/app/commands/abstraction/i_base_command.dart';
import 'package:mvvm_simple/app/models/login_model.dart';
import 'package:mvvm_simple/app/services/abstraction/i_login_service.dart';
import 'package:mvvm_simple/app/services/local_token_service.dart';
import 'package:mvvm_simple/app/services/login_service.dart';
import 'package:mvvm_simple/ui/view_models/abstraction/base_view_model.dart';
import 'package:mvvm_simple/ui/view_models/concrency/login_view_model.dart';
import 'package:uuid/uuid.dart';
import '../../helpers/extension-methods/string_extension.dart';

class LoginCommand extends IBaseCommand {
  @override
  bool canExecute(dynamic data) {
    if (data is! LoginModel) return false;
    final _loginModel = data;
    return !_loginModel.username.isNullorWhiteSpace &&
        !_loginModel.password.isNullorWhiteSpace;
  }

  @override
  execute(BaseViewModel? viewModel) async {
    if (viewModel is! LoginViewModel) {
      throw Exception('LoginViewModel must be sent to login command');
    }
    final _loginViewModel = viewModel;
    if (!canExecute(_loginViewModel.loginModel)) {
      _loginViewModel.showSnackBar('non-correct login model was sent');
      return;
    }

    final _loginModel = _loginViewModel.loginModel;
    _loginModel.id = const Uuid().v1().toString();

    final ILogInRequestService _requestService = LogInRequestService();
    final _loginedUser = await _requestService.logIn(_loginModel);
    if (_loginedUser != null) {
      _loginViewModel
          .showSnackBar('${_loginedUser.username} logined succesfully');
    } else {
      _loginViewModel.showSnackBar('user could not login');
      return;
    }
    final _token = _loginedUser.id.toString();

    final _localTokenService = LocalTokenService();
    final _tokenIsSaved = await _localTokenService.save(token: _token);
    if (_tokenIsSaved) {
      _loginViewModel.showSnackBar(
          'token of ${_loginedUser.username} is saved succesfully');
    } else {
      _loginViewModel
          .showSnackBar('token of ${_loginedUser.username} could not be saved');
    }
  }
}
