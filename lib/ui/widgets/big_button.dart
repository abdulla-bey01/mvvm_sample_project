import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../ui/utils/styles.dart';

// ignore: must_be_immutable
class BigButton extends StatelessWidget {
  BigButton({Key? key, required this.onClick, required this.text})
      : super(key: key);
  late void Function() onClick;
  late String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(40.0.r),
          ),
          child: Center(
            child: Text(
              text,
              style: bigButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
