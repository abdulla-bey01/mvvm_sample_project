import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/concrency/category_and_products_widget_view_model.dart';
import '/ui/widgets/category_and_products_widget.dart';
import '/ui/widgets/famous_sell_product_widget.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '../view_models/abstraction/i_home_page_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.homePageViewModel}) : super(key: key);
  final IHomePageViewModel homePageViewModel;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late IHomePageViewModel _homePageViewModel;
  @override
  void initState() {
    _homePageViewModel = widget.homePageViewModel;
    _homePageViewModel.updateUi = setState;

    if (_homePageViewModel.getAllProductsRequestState ==
        RequestState.default_) {
      _homePageViewModel.getAllProductsCommand?.execute(_homePageViewModel);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: (_homePageViewModel.getAllProductsRequestState ==
                  RequestState.default_ ||
              _homePageViewModel.getAllProductsRequestState ==
                  RequestState.waiting)
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : _homePageViewModel.getAllProductsRequestState ==
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
            product: _homePageViewModel.mostFamousProduct!,
          ),
          SizedBox(
            height: 33.0.h,
          ),
          ..._homePageViewModel.categories!.map((e) {
            return Padding(
              padding: EdgeInsets.only(bottom: 40.0.h),
              child: CategoryAndProductsWidget(
                category: e!,
                products: _homePageViewModel.products!,
                categoryAndProductsWidgetViewModel:
                    CategoryAndProductsWidgetViewModel(
                  updateUi: null,
                  homePageViewModel: _homePageViewModel,
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
