import 'package:flutter/material.dart';
import '../../../app/services/abstraction/i_local_token_service.dart';
import '../../../app/services/abstraction/i_login_service.dart';
import 'base_view_model.dart';

abstract class ILoginViewModel extends BaseViewModel {
  final ILogInRequestService logInRequestService;
  final IlocalTokenService localTokenService;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  ILoginViewModel(
    UpdateUi updateUi,
    ShowSnackBar showSnackBar,
    this.logInRequestService,
    this.localTokenService,
    this.usernameController,
    this.passwordController,
  ) : super(updateUi, showSnackBar);

  Future<void> logIn();
  Future<void> logOut();
}
