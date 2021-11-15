import 'package:flutter/material.dart';
import '../../app/helpers/enums/request_state_enum.dart';
import '../../../ui/utils/styles.dart';
import '../../ui/view_models/abstraction/i_login_result_view_model.dart';
import '../../ui/widgets/big_button.dart';

class LoginResultScreen extends StatefulWidget {
  const LoginResultScreen({
    Key? key,
    this.loginResultViewModel,
  }) : super(key: key);
  static const route = '/login-result-result-screen';
  final ILoginResultViewModel? loginResultViewModel;

  @override
  _LoginResultScreenState createState() => _LoginResultScreenState();
}

class _LoginResultScreenState extends State<LoginResultScreen> {
  late final ILoginResultViewModel? _loginResultViewModel;
  @override
  void initState() {
    _loginResultViewModel = widget.loginResultViewModel;
    _loginResultViewModel?.updateUi = setState;
    _loginResultViewModel?.showSnackBar = _showSnackBar;
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
          child: _loginResultViewModel?.loginState == RequestState.waiting
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _loginResultViewModel?.loginState ==
                              RequestState.successfull
                          ? 'completely logined succesfully'
                          : 'could not login',
                      style: normalTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BigButton(
                        text: _loginResultViewModel?.loginState ==
                                RequestState.successfull
                            ? 'SIGN OUT'
                            : 'TRY AGAIN',
                        onClick: () => _loginResultViewModel?.logOutCommand
                            .execute(_loginResultViewModel),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}