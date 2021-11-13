import 'package:flutter/material.dart';

class StaticBuildContext {
  late BuildContext context;
  static StaticBuildContext? _instance;

  StaticBuildContext._();

  static StaticBuildContext get instance => _instance ??= StaticBuildContext._();
}