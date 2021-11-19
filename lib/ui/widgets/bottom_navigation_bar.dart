import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';
import 'bottom_nav_bar_item.dart';

class CBottomNavigationBar extends StatelessWidget {
  const CBottomNavigationBar({Key? key, required this.mainScreenViewModel}) : super(key: key);
  final IMainScreenViewModel mainScreenViewModel;
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
              selected: mainScreenViewModel.navBarIndex == 0,
              onClick: () => {
                mainScreenViewModel.clickedOnIndex = 0,
                mainScreenViewModel.onClickNavBarItemCommand
                    .execute(mainScreenViewModel),
              },
            ),
            CBottomNavBarItem(
              icon: Icons.shopping_cart_outlined,
              text: 'Shop',
              selected: mainScreenViewModel.navBarIndex == 1,
              onClick: () => {
                mainScreenViewModel.clickedOnIndex = 1,
                mainScreenViewModel.onClickNavBarItemCommand
                    .execute(mainScreenViewModel),
              },
            ),
            CBottomNavBarItem(
              icon: Icons.shopping_bag_outlined,
              text: 'Bag',
              selected: mainScreenViewModel.navBarIndex == 2,
              onClick: () => {
                mainScreenViewModel.clickedOnIndex = 2,
                mainScreenViewModel.onClickNavBarItemCommand
                    .execute(mainScreenViewModel),
              },
            ),
            CBottomNavBarItem(
              icon: Icons.favorite_border,
              text: 'Liked',
              selected: mainScreenViewModel.navBarIndex == 3,
              onClick: () => {
                mainScreenViewModel.clickedOnIndex = 3,
                mainScreenViewModel.onClickNavBarItemCommand
                    .execute(mainScreenViewModel),
              },
            ),
            CBottomNavBarItem(
              icon: Icons.person,
              text: 'Profile',
              selected: mainScreenViewModel.navBarIndex == 4,
              onClick: () => {
                mainScreenViewModel.clickedOnIndex = 4,
                mainScreenViewModel.onClickNavBarItemCommand
                    .execute(mainScreenViewModel),
              },
            ),
          ],
        ),
      ),
    );
  }
}
