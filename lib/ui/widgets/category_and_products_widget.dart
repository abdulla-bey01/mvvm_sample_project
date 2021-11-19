import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/concrency/product_view_model.dart';
import '/ui/widgets/product_widget.dart';
import '/ui/view_models/abstraction/i_category_and_products_widget_view_model.dart';
import '/data/models/category_model.dart';
import '/data/models/product_model.dart';
import 'category_title_widget.dart';

class CategoryAndProductsWidget extends StatelessWidget {
  const CategoryAndProductsWidget({
    Key? key,
    required this.category,
    required this.products,
    required this.categoryAndProductsWidgetViewModel,
  }) : super(key: key);
  final CategoryModel category;
  final List<ProductModel?> products;
  final ICategoryAndProductsWidgetViewModel categoryAndProductsWidgetViewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: CategoryTitleWidget(category: category),
        ),
        SizedBox(
          height: 22.0.h,
        ),
        SizedBox(
          height: 270.0.h,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 14.0.w),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final _product = products[index];
                return ProductWidget(
                    productViewModel: ProductViewModel(
                  updateUi: null,
                  homePageViewModel:
                      categoryAndProductsWidgetViewModel.homePageViewModel,
                  product: _product!,
                ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
