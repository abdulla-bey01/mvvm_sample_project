import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/widgets/liked_grid_view_item_widget.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_liked_page_view_model.dart';
import '../widgets/liked_list_view_item_widget.dart';
import '/ui/utils/styles.dart';

class LikedPage extends StatefulWidget {
  const LikedPage({Key? key, required this.likedPageViewModel})
      : super(key: key);
  final ILikedPageViewModel likedPageViewModel;

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {
  late ILikedPageViewModel _likedPageViewModel;
  bool _showAsGrid = false;
  @override
  void initState() {
    _likedPageViewModel = widget.likedPageViewModel;
    _likedPageViewModel.updateUi = setState;
    _likedPageViewModel.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 106.0.h,
                bottom: 16.0.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Favorites',
                    style: headingStyle,
                  ),
                  (_likedPageViewModel.getLikedItemsRequestState ==
                              RequestState.successfull &&
                          _likedPageViewModel.items!.isEmpty)
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
            _buildCategories(context),
            _buildFilters(context),
            _buildBody(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories(BuildContext context) {
    final _condition = (_likedPageViewModel.getLikedItemsRequestState ==
            RequestState.successfull &&
        _likedPageViewModel.items!.isNotEmpty);
    return !_condition
        ? const SizedBox()
        : SizedBox(
            height: 30.0.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _likedPageViewModel.categories?.length,
              itemBuilder: (ctx, index) {
                final _category = _likedPageViewModel.categories![index];
                return Padding(
                  padding: EdgeInsets.only(right: 12.0.w),
                  child: Chip(
                    backgroundColor: Colors.white,
                    label: Text(
                      _category!.title ?? '',
                      style: size14TextStyle.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
  }

  Widget _buildFilters(BuildContext context) {
    final _condition = (_likedPageViewModel.getLikedItemsRequestState ==
            RequestState.successfull &&
        _likedPageViewModel.items!.isNotEmpty);
    return !_condition
        ? const SizedBox()
        : Padding(
            padding: EdgeInsets.only(top: 16.0.h, bottom: 16.0.h),
            child: SizedBox(
              height: 30.0.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                      Text('  Filter', style: size14TextStyle),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.sort_outlined,
                        color: Colors.white,
                      ),
                      Text('  Price lowets to high', style: size14TextStyle),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _showAsGrid = !_showAsGrid;
                      });
                    },
                    child: Icon(
                      !_showAsGrid ? Icons.grid_on : Icons.grid_off,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: (_likedPageViewModel.getLikedItemsRequestState ==
                  RequestState.default_ ||
              _likedPageViewModel.getLikedItemsRequestState ==
                  RequestState.waiting)
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : _likedPageViewModel.getLikedItemsRequestState ==
                  RequestState.unsuccesfull
              ? const Center(
                  child: Text('Favorite items could not be loaded'),
                )
              : SizedBox(
                  height: (118.0 * 3).h,
                  width: double.infinity,
                  child: MediaQuery.removeViewPadding(
                    removeTop: true,
                    context: context,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      child: _showAsGrid ? _buildGrid() : _buildList(),
                    ),
                  ),
                ),
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      itemCount: _likedPageViewModel.items?.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 290.0.h, crossAxisSpacing: 17.0.w),
      itemBuilder: (ctx, index) {
        final _item = _likedPageViewModel.items![index];
        return LikedGridViewItem(
          item: _item!,
          onClickRemove: (dynamic productId) =>
              _likedPageViewModel.removeItemCommand.execute(
            _likedPageViewModel,
            firstParameter: productId,
          ),
        );
      },
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: _likedPageViewModel.items?.length,
      itemBuilder: (ctx, index) {
        final _item = _likedPageViewModel.items![index];
        return Padding(
          padding: EdgeInsets.only(top: 16.0.h),
          child: SizedBox(
            width: 343.0.w,
            height: _item!.isExistedInStock! ? 116.0.h : 120.0.h,
            child: LikedListViewItemWidget(
              item: _item,
               onClickRemove: (dynamic productId) =>
              _likedPageViewModel.removeItemCommand.execute(
            _likedPageViewModel,
            firstParameter: productId,
          ),
            ),
          ),
        );
      },
    );
  }
}
