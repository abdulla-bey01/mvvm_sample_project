import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(
            imageUrl: product.attachmentsWithColors![0]?.attachment?.url ?? '',
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 100),
            fadeOutDuration: const Duration(milliseconds: 100),
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              );
            },
            errorWidget: (context, url, error) {
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
