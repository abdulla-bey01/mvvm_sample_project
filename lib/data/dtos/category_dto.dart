import 'base_dto.dart';

class CategoryDto extends BaseDto {
  final String? title;

  CategoryDto.createNamed({
    required dynamic id,
    required this.title,
  }) {
    id = id;
  }
}
