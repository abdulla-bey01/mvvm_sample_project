import 'base_model.dart';

class CategoryModel extends BaseModel {
  final String? title;
  final String? slogan;
  final List<CategoryModel>? chidren;
  late double? salePercent;
  late String? imageUrl;

  CategoryModel.createNamed({
    required dynamic id,
    required this.title,
    required this.slogan,
    this.imageUrl,
    this.salePercent,
    this.chidren,
  }) : super(id: id);
}
