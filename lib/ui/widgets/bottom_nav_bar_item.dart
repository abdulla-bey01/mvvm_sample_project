import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/utils/styles.dart';

class CBottomNavBarItem extends StatelessWidget {
  const CBottomNavBarItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.selected,
    required this.onClick,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final bool selected;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h, bottom: 13.0.h),
      child: SizedBox(
        height: 42.0.h,
        width: 38.0..w,
        child: InkWell(
          onTap: () => onClick(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: selected
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
              Text(
                text,
                style: selected
                    ? selectedNavBarItemTextStyle
                    : unselectedNavBarItemTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
