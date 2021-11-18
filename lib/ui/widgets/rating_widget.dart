import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required ProductModel? product,
  })  : _product = product,
        super(key: key);

  final ProductModel? _product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14.0.h,
      width: 148.0.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 75.0.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 1.0.w),
                    child: SizedBox(
                      height: 14.0.h,
                      width: 14.0.w,
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0.sp,
                      ),
                    ),
                  );
                }),
          ),
          Text(
            '(${_product?.ratedBy})',
            style: size10TextStyleGrey,
          ),
        ],
      ),
    );
  }
}