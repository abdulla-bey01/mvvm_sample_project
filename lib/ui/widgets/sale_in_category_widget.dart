import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/utils/styles.dart';

class SaleInCategoryWidget extends StatelessWidget {
  const SaleInCategoryWidget({
    Key? key,
    required this.percent,
    required this.title
  }) : super(key: key);
  final double percent;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.h),
      child: Container(
        height: 100.0.h,
        width: 343.0.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0.r),
          color: const Color.fromRGBO(255, 62, 62, 1),
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: size24TextStyle,
            ),
            Text(
              'Up to $percent% off',
              style: normalTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
