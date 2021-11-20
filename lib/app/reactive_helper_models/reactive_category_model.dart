import '/data/models/category_model.dart';

class ReactiveCategoryModel {
  final CategoryModel? base;
  late bool selected;

  ReactiveCategoryModel({required this.base, this.selected = false});
}
