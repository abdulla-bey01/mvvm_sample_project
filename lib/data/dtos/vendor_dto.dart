import 'base_dto.dart';

class VendorDto extends BaseDto {
  final String? name;

  VendorDto.createNamed({
    required dynamic id,
    required this.name,
  }) : super(id: id);
}
