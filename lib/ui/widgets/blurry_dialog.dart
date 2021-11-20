import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurryDialog extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BlurryDialog({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
        ),
        content: child,
      ),
    );
  }
}
