import 'base_model.dart';

class CategoryModel extends BaseModel {
  final String? title;
  final String? slogan;

  CategoryModel.createNamed({
    required dynamic id,
    required this.title,
    required this.slogan,
  }) : super(id: id);
}
