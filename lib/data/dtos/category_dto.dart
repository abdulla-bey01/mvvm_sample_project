import 'base_dto.dart';

class CategoryDto extends BaseDto {
  final String? title;
  final String? slogan;
  final List<CategoryDto>? chidren;
  late double? salePercent;

  CategoryDto.createNamed({
    required dynamic id,
    required this.title,
    required this.slogan,
    this.salePercent,
    this.chidren,
  }) : super(id: id);
}
