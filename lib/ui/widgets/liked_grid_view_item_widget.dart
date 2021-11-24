import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/liked_item_model.dart';
import '/ui/utils/styles.dart';
import '/ui/widgets/rating_widget.dart';
import 'image_with_loading_widget.dart';

class LikedGridViewItem extends StatelessWidget {
  const LikedGridViewItem(
      {Key? key, required this.item, required this.onClickRemove})
      : super(key: key);
  final LikedItemModel item;
  final Function onClickRemove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.h),
      child: SizedBox(
        height: 290.0.h,
        width: 164.0.w,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 184.0.h,
                  width: 164.0.w,
                  child: ImageWithLoadingWidget(
                    url: item.product?.attachmentsWithColors?[0]?.attachments[0]
                            .url ??
                        '',
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: RatingWidget(product: item.product),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
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
                  padding: EdgeInsets.only(top: 3.0.h),
                  child: Text(
                    '${item.product?.price.toString()}\$',
                    style: size16TextStyle,
                  ),
                ),
              ],
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
            item.isExistedInStock!
                ? Positioned(
                    top: 167.0.h,
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
                  )
                : const SizedBox(),
            item.isExistedInStock!
                ? const SizedBox()
                : Positioned(
                    top: 148.0.h,
                    child: Container(
                      height: 36.0.h,
                      width: 164.0.w,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(42, 44, 54, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0.r),
                          bottomRight: Radius.circular(8.0.r),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0.w),
                          child: Text(
                            'Sorry, this item is currently sold out',
                            style: size11TextStyleGrey,
                          ),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
