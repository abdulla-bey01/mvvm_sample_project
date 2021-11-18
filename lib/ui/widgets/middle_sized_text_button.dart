import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/utils/styles.dart';

// ignore: must_be_immutable
class MiddleSizedTextButton extends StatelessWidget {
  MiddleSizedTextButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);
  late String text;
  late Function onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        constraints: const BoxConstraints(minWidth: 150),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 59.w,
            ),
            child: Text(
              'Check',
              style: middleSizeButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
