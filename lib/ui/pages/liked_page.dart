import 'package:flutter/material.dart';
import '/ui/utils/styles.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('build in liked_page');
    return Center(
      child: Text(
        'Liked Page',
        style: size48TextStyle,
      ),
    );
  }
}
