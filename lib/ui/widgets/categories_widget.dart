import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/abstraction/i_categories_view_model.dart';
import '/ui/widgets/sub_category_widget.dart';
import '/ui/utils/styles.dart';
import 'sale_in_category_widget.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    Key? key,
    required this.categoriesViewModel,
  }) : super(key: key);
  final ICategoriesViewModel categoriesViewModel;

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  late ICategoriesViewModel _categoriesViewModel;

  @override
  void initState() {
    _categoriesViewModel = widget.categoriesViewModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 44.0.h,
          width: 375.0.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _categoriesViewModel.categories?.length,
            itemBuilder: (ctx, index) {
              final _category = _categoriesViewModel.categories![index];
              return InkWell(
                onTap: () => _categoriesViewModel.selectCategoryCommand
                    ?.execute(_categoriesViewModel, firstParameter: index),
                child: Container(
                  height: 44.0.h,
                  width: (375.0 / 3).w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3.0,
                        color: _category!.selected
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      _category.base!.title!,
                      style: _category.selected
                          ? size16TextStyle
                          : size16TextStyle.copyWith(color: Colors.grey),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height.h - 268.0.h,
          width: MediaQuery.of(context).size.width,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _categoriesViewModel.pageController,
            children: [
              ...?_categoriesViewModel.selectedCategory?.base?.chidren
                  ?.map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height.h - 268.0.h,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            (_categoriesViewModel.selectedCategory?.base
                                            ?.salePercent ==
                                        0 ||
                                    _categoriesViewModel.selectedCategory?.base
                                            ?.salePercent ==
                                        null)
                                ? const SizedBox()
                                : SaleInCategoryWidget(
                                    percent: _categoriesViewModel
                                        .selectedCategory!.base!.salePercent!,
                                    title: 'Season Sales',
                                  ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height.h -
                                  385.0.h,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                itemCount: _categoriesViewModel
                                    .categories?[_categoriesViewModel
                                        .selectedCategoryIndex]
                                    ?.base
                                    ?.chidren
                                    ?.length,
                                itemBuilder: (ctx, index) {
                                  final _subCategoty = _categoriesViewModel
                                      .categories?[_categoriesViewModel
                                          .selectedCategoryIndex]
                                      ?.base
                                      ?.chidren![index];
                                  return SubCategoryWidget(
                                    subCategoty: _subCategoty,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
