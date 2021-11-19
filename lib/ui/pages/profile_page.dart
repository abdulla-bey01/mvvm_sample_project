import 'package:flutter/material.dart';
import '/ui/utils/styles.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: size48TextStyle,
      ),
    );
  }
}
