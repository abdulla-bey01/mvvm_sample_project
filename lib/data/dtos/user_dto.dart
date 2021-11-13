import 'base_dto.dart';

class UserDto extends BaseDto {
  final String? username;
  final String? name;
  final String? surname;
  UserDto({
    required dynamic id,
    required this.username,
    required this.name,
    required this.surname,
  })  : assert(id != null, 'id can not be null'),
        assert(username != null, 'username can not be null'),
        assert(name != null, 'name can not be null'),
        assert(surname != null, 'surname can not be null'),
        super(id: id);
  UserDto.createNamed({
    required dynamic id,
    required this.username,
    required this.name,
    required this.surname,
  })  : assert(id != null, 'id can not be null'),
        assert(username != null, 'username can not be null'),
        assert(name != null, 'name can not be null'),
        assert(surname != null, 'surname can not be null'),
        super(id: id);
}
