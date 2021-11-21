import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';

class PriceAndSaledPriceWidget extends StatelessWidget {
  const PriceAndSaledPriceWidget({Key? key, required this.product})
      : super(key: key);
  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${product?.price?.toString()}\$',
          style: priceStyle,
        ),
        (product?.saledPrice != null)
            ? Padding(
                padding: EdgeInsets.only(left: 4.0.w),
                child: Text(
                  '${product?.saledPrice?.toStringAsFixed(1)}\$',
                  style: discountedPriceStyle,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
