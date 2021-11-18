import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/category_model.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';
import 'category_title_widget.dart';
import 'image_with_loading_widget.dart';
import 'price_and_saledprice_widget.dart';
import 'rating_widget.dart';
import '../../app/helpers/extension-methods/bool_extension.dart';

class CategoryAndProductsWidget extends StatelessWidget {
  const CategoryAndProductsWidget(
      {Key? key, required this.category, required this.products})
      : super(key: key);
  final CategoryModel category;
  final List<ProductModel?> products;
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
                return Padding(
                  padding: EdgeInsets.only(right: 14.0.w),
                  child: SizedBox(
                    height: 270.0.h,
                    width: 150.0.w,
                    child: Stack(
                      children: [
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageWithLoadingWidget(product: _product),
                              Padding(
                                padding: EdgeInsets.only(top: 7.0.h),
                                child: RatingWidget(product: _product),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.0.h),
                                child: Text(
                                  _product?.vendor?.name ?? '',
                                  style: size11TextStyleGrey,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0.h),
                                child: Text(
                                  _product?.title ?? '',
                                  style: h2Style,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.0.h),
                                child: PriceAndSaledPriceWidget(
                                  product: _product,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 164.0.h,
                          left: 113.0.w,
                          child: Container(
                            width: 36.0.w,
                            height: 36.0.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(42, 44, 54, 1),
                            ),
                            child: Icon(
                              _product!.favrotiedByUser.isNullOrFalse
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              size: 17.0.sp,
                              color: _product.favrotiedByUser.isNullOrFalse
                                  ? Colors.grey
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
