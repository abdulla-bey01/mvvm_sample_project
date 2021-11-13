import 'dart:convert';

import 'base_dto.dart';

class LoginDto extends BaseDto {
  final String? username;
  final String? password;

  LoginDto(
    dynamic id,
    this.username,
    this.password,
  )   : assert(id != null, 'id can not be null'),
        assert(username != null, 'username can not be null'),
        assert(password != null, 'name can not be null'),
        super(id: id);

  LoginDto.createNamed({
    dynamic id,
    this.username,
    this.password,
  })  : assert(id != null, 'id can not be null'),
        assert(username != null, 'username can not be null'),
        assert(password != null, 'name can not be null'),
        super(id: id);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
    };
  }

  factory LoginDto.fromMap(Map<String, dynamic>? map) {
    return LoginDto.createNamed(
      id: map?['id'] ?? '',
      username: map?['username'] ?? '',
      password: map?['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDto.fromJson(String source) =>
      LoginDto.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginDto(id: $id, username: $username, password: $password)';
}
