import 'base_dto.dart';

class CategoryDto extends BaseDto {
  final String? title;
  final String? slogan;

  CategoryDto.createNamed({
    required dynamic id,
    required this.title,
    required this.slogan,
  }) : super(id: id);
}
