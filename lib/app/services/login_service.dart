import 'package:flutter/foundation.dart';
import '../../app/models/login_model.dart';
import '../../data/dtos/login_dto.dart';
import '../../app/migrations/login_migrator.dart';
import '../../data/dtos/user_dto.dart';
import 'package:uuid/uuid.dart';
import 'abstraction/i_login_service.dart';

class LogInRequestService extends ILogInRequestService {
  LogInRequestService() : super();

  @override
  Future<UserDto?>? logIn(LoginModel? login) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      //requestState = RequestState.waiting;
      LoginDto? _dto = LoginMigrator().migrateToDto(login);

      // ignore: unused_local_variable
      final _dtoToJson = _dto?.toJson();

      const _statusCode = 200;

      if (_statusCode == 200) {
        final _userDto = UserDto.createNamed(
          id: const Uuid().v1().toString(),
          username: login?.username,
          name: 'Saleh',
          surname: 'Abdullabayli',
        );

        return _userDto;
      } else {
        throw Exception(
            'request was unsuccesfull with status code: $_statusCode');
      }
    } catch (e) {
      return null;
    } finally {
      debugPrint('login request is finished');
    }
  }
}
