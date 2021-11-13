import 'package:flutter/material.dart';
import 'package:mvvm_simple/ui/utils/styles.dart';
import 'package:mvvm_simple/ui/view_models/i_login_view_model.dart';
import 'package:mvvm_simple/ui/view_models/login_view_model.dart';
import 'package:mvvm_simple/ui/widgets/arrow_button.dart';
import 'package:mvvm_simple/ui/widgets/big_button.dart';
import 'package:mvvm_simple/ui/widgets/custom_textfield_withlabel.dart';

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
      showSnackBar: _showSnackBar,
    );
    super.initState();
  }

  void _showSnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
        ),
      ),
    );
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
                    padding: const EdgeInsets.all(8.0),
                    child: BigButton(
                      text: 'SIGN IN',
                      onClick: _loginViewModel.logIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            'Sign In',
            style: headingStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 180, top: 8.0, bottom: 16.0),
          child: Text(
            'to continue adventure of chance',
            style: sloganStyle,
          ),
        ),
      ],
    );
  }
}

class LoginInputsAndTitle extends StatelessWidget {
  const LoginInputsAndTitle({
    Key? key,
    required ILoginViewModel loginViewModel,
    required this.height,
  })  : _loginViewModel = loginViewModel,
        super(key: key);

  final ILoginViewModel _loginViewModel;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginTitle(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFieldWithLabel(
              label: 'Username',
              controller: _loginViewModel.usernameController,
              inputType: TextInputType.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFieldWithLabel(
              label: 'Password',
              controller: _loginViewModel.passwordController,
              inputType: TextInputType.visiblePassword,
              isPassword: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Have not you been here? ',
                  style: normalTextStyle,
                ),
                ArrowButton(
                  onClick: () {
                    debugPrint('arrow button in was clicked');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
