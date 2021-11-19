import 'package:flutter/material.dart';
import '/ui/view_models/concrency/bottom_navigation_bar_view_model.dart';
import '/ui/pages/bag_page.dart';
import '/ui/pages/home_page.dart';
import '/ui/pages/liked_page.dart';
import '/ui/pages/profile_page.dart';
import '/ui/pages/shop_page.dart';
import '/ui/utils/static_build_context.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';
import '/ui/view_models/concrency/main_screen_view_model.dart';
import '/ui/widgets/bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const route = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late IMainScreenViewModel _mainScreenViewModel;
  @override
  void initState() {
    _mainScreenViewModel = MainScreenViewModel(
      updateUi: setState,
    );
    StaticBuildContext.instance.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: PageView(
        controller: _mainScreenViewModel.pageController,
        onPageChanged: _mainScreenViewModel.onPageChanged,
        children: const [
          HomePage(),
          ShopPage(),
          BagPage(),
          LikedPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: CBottomNavigationBar(
        bottomNavigationBarViewModel: BottomNavigationBarViewModel(
          mainScreenViewModel: _mainScreenViewModel,
        ),
      ),
    );
  }
}
