import 'package:flutter/material.dart';
import '/ui/widgets/fade_indexed_stack.dart';
import '/ui/view_models/concrency/shop_page_view_model.dart';
import '/ui/view_models/concrency/home_page_view_model.dart';
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
  late List<Widget> _pages;
  @override
  void initState() {
    _mainScreenViewModel = MainScreenViewModel(
      updateUi: setState,
    );
    _pages = [
      HomePage(homePageViewModel: HomePageViewModel()),
      ShopPage(shopPageViewModel: ShopPageViewModel()),
      const BagPage(),
      const LikedPage(),
      const ProfilePage(),
    ];
    StaticBuildContext.instance.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: FadeIndexedStack(
        children: _pages,
        index: _mainScreenViewModel.navBarIndex,
      ),
      bottomNavigationBar: CBottomNavigationBar(
        bottomNavigationBarViewModel: BottomNavigationBarViewModel(
          mainScreenViewModel: _mainScreenViewModel,
        ),
      ),
    );
  }
}
