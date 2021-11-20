import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/category_model.dart';
import '/ui/utils/styles.dart';

import 'image_with_loading_widget.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({
    Key? key,
    required CategoryModel? subCategoty,
  })  : _subCategoty = subCategoty,
        super(key: key);

  final CategoryModel? _subCategoty;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.h),
      child: Container(
        height: 100.0.h,
        width: 343.0.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0.r),
                  topLeft: Radius.circular(8.0.r),
                ),
                color: Colors.white.withOpacity(0.03),
              ),
              height: 100.0.h,
              width: (343.0 / 2).w,
              child: Center(
                child: Text(
                  _subCategoty?.title ?? '',
                  style: size16TextStyle,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0.r),
                  topRight: Radius.circular(8.0.r),
                ),
                color: Colors.white.withOpacity(0.03),
              ),
              height: 100.0.h,
              width: (343.0 / 2).w,
              child: ImageWithLoadingWidget(
                url: _subCategoty!.imageUrl!,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0.r),
                  topRight: Radius.circular(8.0.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
