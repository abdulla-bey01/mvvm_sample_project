import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';

class ImageWithLoadingWidget extends StatelessWidget {
  const ImageWithLoadingWidget({
    Key? key,
    required ProductModel? product,
  }) : _product = product, super(key: key);

  final ProductModel? _product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184.0.h,
      width: 148.0.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          8.0.r,
        ),
        child: Image.network(
          _product?.attachmentsWithColors![0]!
                  .attachment!.url ??
              '',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.wallpaper_rounded,
                      size: 100,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0),
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
          loadingBuilder:
              (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress
                            .expectedTotalBytes !=
                        null
                    ? loadingProgress
                            .cumulativeBytesLoaded /
                        loadingProgress
                            .expectedTotalBytes!
                    : null,
                valueColor:
                    const AlwaysStoppedAnimation<
                        Color>(Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}