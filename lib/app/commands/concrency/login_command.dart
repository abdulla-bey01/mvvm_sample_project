import 'package:flutter/material.dart';
import '/data//models/login_model.dart';
import '/app/start/mvvm_app.dart';
import '/ui/screens/login_result_screen.dart';
import '/ui/view_models/abstraction/base_view_model.dart';
import '/ui/view_models/concrency/login_result_view_model.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/app/services/abstraction/i_login_service.dart';
import '../../services/concrency/local_token_service.dart';
import '../../services/concrency/login_service.dart';
import '/ui/view_models/concrency/login_view_model.dart';
import 'package:uuid/uuid.dart';
import '../../../app/helpers/extension-methods/string_extension.dart';

class LoginCommand extends IBaseCommand {
  @override
  bool canExecute(dynamic data) {
    if (data is! LoginModel) return false;
    final _loginModel = data;
    return !_loginModel.email.isNullorWhiteSpace &&
        !_loginModel.password.isNullorWhiteSpace;
  }

  @override
  void execute(BaseViewModel? viewModel,
      {dynamic firstParameter, dynamic secondParameter}) async {
    if (viewModel is! LoginViewModel) {
      throw Exception('LoginViewModel must be sent to login command');
    }
    if (!canExecute(viewModel.loginModel)) {
      viewModel.showSnackBar('non-correct login model was sent');
      return;
    }

    final _loginModel = viewModel.loginModel;
    _loginModel.id = const Uuid().v1().toString();

    final _loginResultViewModel = LoginResultViewModel(RequestState.waiting);
    //if you use push in stead of pushReplacement, it the datas user enetered will be stayed in textfield when use will pop next screen from tree
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginResultScreen(
          loginResultViewModel: _loginResultViewModel,
        ),
      ),
    );

    final ILogInRequestService _requestService = LogInRequestService();
    final _token = await _requestService.logIn(_loginModel);
    if (_token == null) {
      _loginResultViewModel.updateUi!(() {
        _loginResultViewModel.loginState = RequestState.unsuccesfull;
      });
      return;
    }

    //save token coming from server
    final _localTokenService = LocalTokenService();
    final _tokenIsSaved = await _localTokenService.save(token: _token);
    _loginResultViewModel.updateUi!(() {
      _loginResultViewModel.loginState =
          _tokenIsSaved ? RequestState.successfull : RequestState.unsuccesfull;
    });
  }
}
