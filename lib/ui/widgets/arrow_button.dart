import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArrowButton extends StatelessWidget {
  ArrowButton({Key? key, required this.onClick}) : super(key: key);
  late void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClick,
      icon: Icon(
        Icons.arrow_right_alt,
        color: Theme.of(context).colorScheme.secondary,
        size: 35,
      ),
    );
  }
}