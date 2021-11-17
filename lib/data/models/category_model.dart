import 'base_model.dart';

class CategoryModel extends BaseModel {
  final String? title;

  CategoryModel.createNamed({
    required dynamic id,
    required this.title,
  }) {
    id = id;
  }
}
