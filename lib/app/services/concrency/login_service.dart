import 'package:flutter/foundation.dart';
import '/app/di/di_container.dart';
import '/data//models/login_model.dart';
import '/data/migrations/login_migrator.dart';
import '../../../data/dtos/login_dto.dart';
import '../abstraction/i_login_service.dart';

class LogInRequestService extends ILogInRequestService {
  @override
  Future<String?>? logIn(LoginModel? login) async {
    try {
      LoginDto? _dto = LoginMigrator().migrateToDto(login);

      final _authManager = AppDiContainer.instance.authNetworkManager;
      final _token = await _authManager.logIn(_dto);

      if (_token != null) {
        return _token;
      } else {
        throw Exception('request was unsuccesfull with');
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    } finally {
      debugPrint('login request is finished');
    }
  }
}
