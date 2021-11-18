import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';

import 'middle_sized_text_button.dart';

class FamousSellProductWidget extends StatelessWidget {
  const FamousSellProductWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.product})
      : super(key: key);
  final double height;
  final double width;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Image.network(
            product.attachmentsWithColors![0]?.attachment?.url ?? '',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.wallpaper_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Sorry, image could not be showed',
                          style: size16TextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 86.0.h,
          left: 15.0.w,
          child: Text(
            'Famous\nsale',
            style: size48TextStyle,
          ),
        ),
        Positioned(
          bottom: 32.0.h,
          left: 10.0.w,
          child: MiddleSizedTextButton(
            text: 'Check',
            onClick: () {},
          ),
        ),
      ],
    );
  }
}
