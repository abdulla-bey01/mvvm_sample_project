import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/liked_item_model.dart';
import '/ui/utils/styles.dart';
import '/ui/widgets/rating_widget.dart';
import 'image_with_loading_widget.dart';

class LikedListViewItemWidget extends StatelessWidget {
  const LikedListViewItemWidget(
      {Key? key, required this.item, required this.onClickRemove})
      : super(key: key);
  final LikedItemModel item;
  final Function onClickRemove;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 360.0.w,
          height: 104.0.h,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.03),
            borderRadius: BorderRadius.circular(8.0.r),
          ),
          child: Row(
            children: [
              Container(
                color: Colors.white.withOpacity(0.03),
                height: 104.0.h,
                width: 104.0.h,
                child: ImageWithLoadingWidget(
                  url: item.product?.attachmentsWithColors![0]?.attachments[0]
                          .url ??
                      '',
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0.r),
                    topLeft: Radius.circular(8.0.r),
                  ),
                ),
              ),
              SizedBox(width: 12.0.w),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0.h),
                      child: Text(
                        item.product?.vendor?.name ?? '',
                        style: size11TextStyleGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0.h),
                      child: Text(
                        item.product?.title ?? '',
                        style: size16TextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.h),
                      child: Text(
                        '${item.product?.price.toString()}\$',
                        style: size16TextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.0.h),
                      child: RatingWidget(product: item.product),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0.0.h,
          right: 0.0.w,
          child: InkWell(
            onTap: () => onClickRemove(item.product?.id),
            child: SizedBox(
              width: 36.0.w,
              height: 36.0.h,
              child: Icon(
                Icons.close,
                size: 25.0.sp,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        !item.isExistedInStock!
            ? const SizedBox()
            : Positioned(
                top: 80.0.h,
                right: 0.0.w,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 36.0.w,
                    height: 36.0.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      size: 17.0.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
        item.isExistedInStock!
            ? const SizedBox()
            : Positioned(
                top: 107.0.h,
                left: 0.0.w,
                child: Text(
                  'Sorry, this item is currently sold out',
                  style: size11TextStyleGrey,
                ),
              ),
      ],
    );
  }
}
