import 'package:flutter/material.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/utils/styles.dart';
import '/ui/view_models/abstraction/i_login_result_view_model.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _sizes = MediaQuery.of(context).size;
    final _width = _sizes.width;
    final _height = _sizes.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    if (_loginResultViewModel?.loginState == RequestState.successfull) {
      Future.delayed(
        const Duration(seconds: 2),
      ).then((value) {
        _loginResultViewModel?.passToMainScreenCommand.execute(null);
      });
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: InkWell(
          onTap: () =>
              _loginResultViewModel?.loginState == RequestState.successfull
                  ? _loginResultViewModel?.passToMainScreenCommand.execute(null)
                  : _loginResultViewModel?.tryLoginAgainCommand.execute(null),
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          _loginResultViewModel?.loginState ==
                                  RequestState.successfull
                              ? 'User was logined, click on screen or wait 2 second to pass to main screen'
                              : 'Could not login, click on screen to try again',
                          style: normalTextStyle,
                          textAlign: TextAlign.center,
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
