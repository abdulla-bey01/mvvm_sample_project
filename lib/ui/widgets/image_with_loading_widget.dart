import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/utils/styles.dart';

class ImageWithLoadingWidget extends StatelessWidget {
  const ImageWithLoadingWidget({
    Key? key,
    required this.url,
    required this.borderRadius,
  }) : super(key: key);
  final String url;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184.0.h,
      width: 148.0.w,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CachedNetworkImage(
          imageUrl: url,
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
    );
  }
}
