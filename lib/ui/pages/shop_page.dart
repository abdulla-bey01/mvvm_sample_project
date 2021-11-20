import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_shop_page_view_model.dart';
import '../widgets/categories_widget.dart';
import '/ui/utils/styles.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key, required this.shopPageViewModel}) : super(key: key);
  final IShopPageViewModel shopPageViewModel;

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late IShopPageViewModel _shopPageViewModel;
  @override
  void initState() {
    _shopPageViewModel = widget.shopPageViewModel;
    _shopPageViewModel.categoriesViewModel.updateUi = setState;
    //initialize categories
    if (_shopPageViewModel.categoriesViewModel.getAllCategoriesRequestState ==
        RequestState.default_) {
      _shopPageViewModel.categoriesViewModel.getAllCategoriesCommand
          ?.execute(_shopPageViewModel.categoriesViewModel);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text(
            'Shop',
            style: headline3Style,
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 11.0.w),
              child: const Icon(
                Icons.search,
                size: 24.0,
              ),
            ),
          ],
        ),
        body: (_shopPageViewModel
                        .categoriesViewModel.getAllCategoriesRequestState ==
                    RequestState.default_ ||
                _shopPageViewModel
                        .categoriesViewModel.getAllCategoriesRequestState ==
                    RequestState.waiting)
            ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : _shopPageViewModel
                        .categoriesViewModel.getAllCategoriesRequestState ==
                    RequestState.unsuccesfull
                ? const Center(
                    child: Text('Categories could not be loaded'),
                  )
                : _buildBody());
  }

  Widget _buildBody() {
    return CategoriesWidget(
      categoriesViewModel: _shopPageViewModel.categoriesViewModel,
    );
  }
}
