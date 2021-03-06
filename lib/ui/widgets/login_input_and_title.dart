import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../ui/utils/styles.dart';
import '../view_models/abstraction/i_login_view_model.dart';
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
          const Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: LoginTitle(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: CustomTextFieldWithLabel(
              label: 'Email',
              controller: _loginViewModel.emailController,
              inputType: TextInputType.name,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: CustomTextFieldWithLabel(
              label: 'Password',
              controller: _loginViewModel.passwordController,
              inputType: TextInputType.visiblePassword,
              isPassword: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Have not you been here? ',
                  style: normalTextStyle,
                ),
                ArrowButton(
                  onClick: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
