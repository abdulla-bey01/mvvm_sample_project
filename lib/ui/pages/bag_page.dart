import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/widgets/big_button.dart';
import '/ui/widgets/bag_item_widget.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_bag_page_view_model.dart';
import '/ui/utils/styles.dart';

class BagPage extends StatefulWidget {
  const BagPage({Key? key, required this.bagPageViewModel}) : super(key: key);
  final IBagPageViewModel bagPageViewModel;
  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  late IBagPageViewModel _bagPageViewModel;
  @override
  void initState() {
    _bagPageViewModel = widget.bagPageViewModel;
    _bagPageViewModel.updateUi = setState;
    _bagPageViewModel.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 106.0.h, left: 14.0.w, bottom: 16.0.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'My Bag',
                  style: headingStyle,
                ),
                (_bagPageViewModel.getBagItemsRequestState ==
                            RequestState.successfull &&
                        _bagPageViewModel.getTotalAmountOfItems() <= 0)
                    ? Center(
                        child: Text(
                          '   is empty  :(',
                          style: headingStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 20.sp,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          Expanded(
            child: (_bagPageViewModel.getBagItemsRequestState ==
                        RequestState.default_ ||
                    _bagPageViewModel.getBagItemsRequestState ==
                        RequestState.waiting)
                ? const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : _bagPageViewModel.getBagItemsRequestState ==
                        RequestState.unsuccesfull
                    ? const Center(
                        child: Text('Bag could not be loaded'),
                      )
                    : SizedBox(
                        height: (118.0 * 3).h,
                        width: double.infinity,
                        child: MediaQuery.removeViewPadding(
                          removeTop: true,
                          context: context,
                          child: ListView.builder(
                            itemCount: _bagPageViewModel.items?.length,
                            itemBuilder: (ctx, index) {
                              final _item = _bagPageViewModel.items![index];
                              return BagItemWidget(
                                item: _item!,
                                onUpdateItemCount:
                                    (dynamic itemId, int count) =>
                                        _bagPageViewModel
                                            .updateItemCountInBagCommand
                                            .execute(
                                  _bagPageViewModel,
                                  firstParameter: itemId,
                                  secondParameter: count,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
          ),
          if (_bagPageViewModel.getBagItemsRequestState ==
                  RequestState.successfull &&
              _bagPageViewModel.getTotalAmountOfItems() > 0) ...[
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: 26.0.h, left: 14.0.w, right: 14.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount:',
                    style: normalTextStyle.copyWith(
                        fontSize: 17.sp, color: Colors.grey),
                  ),
                  Text(
                    _bagPageViewModel
                            .getTotalAmountOfItems()
                            .toStringAsFixed(1) +
                        '\$',
                    style: normalTextStyle.copyWith(fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 14.0.w, right: 14.0.w, bottom: 22.0.h),
              child: BigButton(
                onClick: () {},
                text: 'CHECK OUT',
              ),
            ),
          ] else
            const SizedBox(),
        ],
      ),
    );
  }
}
