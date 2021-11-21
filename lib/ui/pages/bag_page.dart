import 'package:flutter/material.dart';
import '/ui/utils/styles.dart';

class BagPage extends StatelessWidget {
  const BagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('build in bag_page');
    return Center(
      child: Text(
        'Bag Page',
        style: size48TextStyle,
      ),
    );
  }
}
