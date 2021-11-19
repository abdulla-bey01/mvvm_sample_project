import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/abstraction/i_bottom_navigation_bar_view_model.dart';
import 'bottom_nav_bar_item.dart';

class CBottomNavigationBar extends StatelessWidget {
  const CBottomNavigationBar(
      {Key? key, required this.bottomNavigationBarViewModel})
      : super(key: key);
  final IBottomNavigationBarViewModel bottomNavigationBarViewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0.w,
      height: 83.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CBottomNavBarItem(
              icon: Icons.home_outlined,
              text: 'Home',
              selected: bottomNavigationBarViewModel
                      .mainScreenViewModel.navBarIndex ==
                  0,
              onClick: () => bottomNavigationBarViewModel.onClickNavBarItem(0),
            ),
            CBottomNavBarItem(
              icon: Icons.shopping_cart_outlined,
              text: 'Shop',
              selected: bottomNavigationBarViewModel
                      .mainScreenViewModel.navBarIndex ==
                  1,
              onClick: () => bottomNavigationBarViewModel.onClickNavBarItem(1),
            ),
            CBottomNavBarItem(
              icon: Icons.shopping_bag_outlined,
              text: 'Bag',
              selected: bottomNavigationBarViewModel
                      .mainScreenViewModel.navBarIndex ==
                  2,
              onClick: () => bottomNavigationBarViewModel.onClickNavBarItem(2),
            ),
            CBottomNavBarItem(
              icon: Icons.favorite_border,
              text: 'Liked',
              selected: bottomNavigationBarViewModel
                      .mainScreenViewModel.navBarIndex ==
                  3,
              onClick: () => bottomNavigationBarViewModel.onClickNavBarItem(3),
            ),
            CBottomNavBarItem(
              icon: Icons.person,
              text: 'Profile',
              selected: bottomNavigationBarViewModel
                      .mainScreenViewModel.navBarIndex ==
                  4,
              onClick: () => bottomNavigationBarViewModel.onClickNavBarItem(4),
            ),
          ],
        ),
      ),
    );
  }
}
