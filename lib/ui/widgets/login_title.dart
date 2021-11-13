import 'package:flutter/material.dart';
import '../../ui/utils/styles.dart';

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