import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/widgets/category_and_products_widget.dart';
import '/ui/widgets/famous_sell_product_widget.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';
import '/ui/view_models/concrency/main_screen_view_model.dart';

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
      showSnackBar: _showSnackBar,
    );
    super.initState();
  }

  void _showSnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: (_mainScreenViewModel.getAllProductsRequestState ==
                  RequestState.default_ ||
              _mainScreenViewModel.getAllProductsRequestState ==
                  RequestState.waiting)
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : _mainScreenViewModel.getAllProductsRequestState ==
                  RequestState.unsuccesfull
              ? const Center(
                  child: Text('Products could not be loaded'),
                )
              : _buildBody(
                  MediaQuery.of(context).size,
                  Theme.of(context),
                ),
    );
  }

  Widget _buildBody(Size size, ThemeData theme) {
    final _height = 536.h;
    final _width = 376.w;
    return SingleChildScrollView(
      child: Column(
        children: [
          FamousSellProductWidget(
            width: _width,
            height: _height,
            product: _mainScreenViewModel.mostFamousProduct!,
          ),
          SizedBox(
            height: 33.0.h,
          ),
          ..._mainScreenViewModel.categories!.map((e) {
            return Padding(
              padding: EdgeInsets.only(bottom: 40.0.h),
              child: CategoryAndProductsWidget(
                category: e!,
                products: _mainScreenViewModel.products!,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
