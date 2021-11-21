import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/bag_item_model.dart';
import '/ui/utils/styles.dart';
import 'image_with_loading_widget.dart';

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({
    Key? key,
    required this.item,
    required this.onUpdateItemCount,
  }) : super(key: key);

  final BagItemModel item;
  final Function onUpdateItemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 14.0.h,
        left: 16.0.w,
        right: 16.0.w,
      ),
      child: Container(
        width: 343.0.w,
        height: 104.0.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.04),
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 104.0.h,
              width: 104.0.h,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0.r),
                  bottomLeft: Radius.circular(8.0.r),
                ),
                child: ImageWithLoadingWidget(
                  url: item.productImageUrl,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0.r),
                    bottomLeft: Radius.circular(8.0.r),
                  ),
                ),
              ),
            ),
            Container(
              height: 104.0.h,
              width: 343.0.w - 104.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0.r),
                  bottomRight: Radius.circular(8.0.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 11.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 11.0.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.productTitle,
                            style: size16TextStyle,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0.w),
                            child: InkWell(
                              onTap: () =>
                                  onUpdateItemCount(item.id, -item.count),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0.h),
                      child: Row(
                        children: [
                          Text(
                            'Color:',
                            style: size11TextStyleGrey,
                          ),
                          Text(
                            '  ${item.color.name}',
                            style: size11TextStyleWhite,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14.0.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 109.0.w,
                            height: 36.0.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () => onUpdateItemCount(item.id, -1),
                                  child: Container(
                                    width: 36.0.h,
                                    height: 36.0.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  item.count.toString(),
                                  style: normalTextStyle,
                                ),
                                InkWell(
                                  onTap: () => onUpdateItemCount(item.id, 1),
                                  child: Container(
                                    width: 36.0.h,
                                    height: 36.0.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.keyboard_arrow_up,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0.w),
                            child: Text(
                              '${item.amount.toStringAsFixed(2)}\$',
                              style: normalTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
