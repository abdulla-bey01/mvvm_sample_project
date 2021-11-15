import 'package:flutter/material.dart';
import '../../../ui/screens/login_result_screen.dart';
import '../../../ui/view_models/abstraction/base_view_model.dart';
import '../../../ui/view_models/concrency/login_result_view_model.dart';
import '../../../app/commands/abstraction/i_base_command.dart';
import '../../../app/helpers/enums/request_state_enum.dart';
import '../../../app/models/login_model.dart';
import '../../../app/services/abstraction/i_login_service.dart';
import '../../../app/services/local_token_service.dart';
import '../../../app/services/login_service.dart';
import '../../../ui/view_models/concrency/login_view_model.dart';
import 'package:uuid/uuid.dart';
import '../../../main.dart';
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
      _loginViewModel.showSnackBar!('non-correct login model was sent');
      return;
    }

    final _loginModel = _loginViewModel.loginModel;
    _loginModel.id = const Uuid().v1().toString();

    _loginViewModel.loginState = RequestState.waiting;
    final _loginResultViewModel =
        LoginResultViewModel(_loginViewModel.loginState);

    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => LoginResultScreen(
          loginResultViewModel: _loginResultViewModel,
        ),
      ),
    );

    final ILogInRequestService _requestService = LogInRequestService();
    final _loginedUser = await _requestService.logIn(_loginModel);
    if (_loginedUser == null) {
      _loginResultViewModel.updateUi!(() {
        _loginResultViewModel.loginState = RequestState.unsuccesfull;
      });
      return;
    }

    //save token coming from server
    final _token = _loginedUser.id.toString();
    final _localTokenService = LocalTokenService();
    final _tokenIsSaved = await _localTokenService.save(token: _token);

    if (_tokenIsSaved) {
      _loginResultViewModel.updateUi!(() {
        _loginResultViewModel.loginState = RequestState.successfull;
      });
    } else {
      _loginResultViewModel.updateUi!(() {
        _loginResultViewModel.loginState = RequestState.unsuccesfull;
      });
    }
  }
}