import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/app/helpers/extension-methods/bool_extension.dart';
import '/ui/utils/styles.dart';
import '/ui/view_models/abstraction/i_product_view_model.dart';
import '/ui/widgets/price_and_saledprice_widget.dart';
import '/ui/widgets/rating_widget.dart';

import 'image_with_loading_widget.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key, required this.productViewModel})
      : super(key: key);
  final IProductViewModel productViewModel;
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  void initState() {
    widget.productViewModel.updateUi = setState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _product = widget.productViewModel.product;
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
                  ImageWithLoadingWidget(
                    url: _product
                            .attachmentsWithColors![0]!.attachments[0].url ??
                        '',
                    borderRadius: BorderRadius.circular(
                      8.0.r,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.0.h),
                    child: RatingWidget(product: _product),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.0.h),
                    child: Text(
                      _product.vendor?.name ?? '',
                      style: size11TextStyleGrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0.h),
                    child: Text(
                      _product.title ?? '',
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
            _product.salePercent != null && _product.salePercent! > 0.0
                ? Positioned(
                    top: 8.0.h,
                    left: 9.0.w,
                    child: Chip(
                      backgroundColor: const Color.fromRGBO(255, 62, 62, 1),
                      label: Text(
                        '${_product.salePercent}%',
                        style: size11TextStyleWhite,
                      ),
                    ),
                  )
                : const SizedBox(),
            Positioned(
              top: 164.0.h,
              left: 113.0.w,
              child: InkWell(
                onTap: () => widget.productViewModel.homePageViewModel
                    .updateProductFavorityCommand
                    ?.execute(widget.productViewModel.homePageViewModel,
                        firstParameter: _product.id),
                //widget.productViewModel.updateProductFavority(_product.id),
                child: Container(
                  width: 36.0.w,
                  height: 36.0.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(42, 44, 54, 1),
                  ),
                  child: Icon(
                    _product.favrotiedByUser.isNullOrFalse
                        ? Icons.favorite_border
                        : Icons.favorite,
                    size: 17.0.sp,
                    color: _product.favrotiedByUser.isNullOrFalse
                        ? Colors.grey
                        : Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
