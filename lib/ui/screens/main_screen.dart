import 'package:flutter/material.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_main_screen_view_model.dart';
import '/ui/view_models/concrency/main_screen_view_model.dart';
import '/ui/widgets/product_widget.dart';

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
    _mainScreenViewModel.getAllProductsCommand?.execute(_mainScreenViewModel);
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
      appBar: AppBar(
        title: const Text('MainScreen'),
      ),
      body: _mainScreenViewModel.getAllProductsRequestState ==
              RequestState.waiting
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _mainScreenViewModel.getAllProductsRequestState ==
                  RequestState.waiting
              ? const Center(
                  child: Text('Products could not be loaded'),
                )
              : ListView.builder(
                  itemCount: _mainScreenViewModel.products?.length,
                  itemBuilder: (ctx, index) {
                    final _product = _mainScreenViewModel.products?[index];
                    return ProductWidget(
                      product: _product,
                      onClick: () => _mainScreenViewModel
                          .passToProductDetailsCommand!
                          .execute(_mainScreenViewModel),
                    );
                  },
                ),
    );
  }
}
