import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../ui/widgets/login_input_and_title.dart';
import '../view_models/abstraction/i_login_view_model.dart';
import '../view_models/concrency/login_view_model.dart';
import '../../ui/widgets/big_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const route = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final ILoginViewModel _loginViewModel;
  @override
  void initState() {
    _loginViewModel = LoginViewModel(
      updateUi: setState,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _sizes = MediaQuery.of(context).size;
    final _width = _sizes.width;
    final _height = _sizes.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SizedBox(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  LoginInputsAndTitle(
                    loginViewModel: _loginViewModel,
                    height: _height * .6,
                  ),
                  SizedBox(
                    height: _height * .3,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: _height * .1,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: BigButton(
                        text: 'SIGN IN',
                        onClick: () => _loginViewModel.loginCommand
                            ?.execute(_loginViewModel),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
