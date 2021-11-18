import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/category_model.dart';
import '/ui/utils/styles.dart';

class CategoryTitleWidget extends StatelessWidget {
  const CategoryTitleWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                category.title!,
                style: size34TextStyle,
              ),
              Text(
                category.slogan!,
                style: size11TextStyleGrey,
              ),
            ],
          ),
          Text(
            'View All',
            style: size11TextStyleWhite,
          ),
        ],
      ),
    );
  }
}