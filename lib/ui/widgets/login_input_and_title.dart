import 'package:flutter/material.dart';
import '../../ui/utils/styles.dart';
import '../../ui/view_models/i_login_view_model.dart';
import 'arrow_button.dart';

import 'custom_textfield_withlabel.dart';
import 'login_title.dart';

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