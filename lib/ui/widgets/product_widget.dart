import 'package:flutter/material.dart';
import '/data/models/product_model.dart';
import '/ui/utils/styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key, this.product, this.onClick}) : super(key: key);
  final ProductModel? product;
  final Function? onClick;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onClick!(),
      title: Text(product?.title ?? ''),
      subtitle: Text(product?.description ?? ''),
      trailing: SizedBox(
        height: 100,
        width: 100,
        child: Image.network(
          product?.attachmentsWithColors![0]?.attachment?.url ??
              'default_place_holder_url_for_notloading_error',
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
    );
  }
}
