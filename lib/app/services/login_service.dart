import 'package:flutter/foundation.dart';
import '../../app/models/login_model.dart';
import '../../data/dtos/login_dto.dart';
import '../../app/migrations/login_migrator.dart';
import '../../data/dtos/user_dto.dart';
import '../../app/helpers/enums/request_state_enum.dart';
import 'package:uuid/uuid.dart';

abstract class ILogInRequestService {
  RequestState requestState;
  ILogInRequestService({
    required this.requestState,
  });
  Future<UserDto?>? logIn(LoginModel? login);
}

class LogInRequestService extends ILogInRequestService {
  LogInRequestService() : super(requestState: RequestState.default_);

  @override
  Future<UserDto?>? logIn(LoginModel? login) async {
    try {
      requestState = RequestState.waiting;
      LoginDto? _dto = LoginMigrator()
          .migrateToDto(login); 

      // ignore: unused_local_variable
      final _dtoToJson = _dto
          ?.toJson();

      const _statusCode = 200; 

      if (_statusCode > 100) {
        requestState = RequestState.successfull;
      } else {
        requestState = RequestState.unsuccesfull;
        throw Exception('request was unsuccesfull with status code: $_statusCode');
      }

      final _userDto = UserDto.createNamed(
        id: const Uuid().v1().toString(),
        username: login?.username,
        name: 'Saleh',
        surname: 'Abdullabayli',
      );

      return _userDto;
    } catch (e) {
      return null;
    } finally {
      debugPrint('login request is finished');
    }
  }
}
