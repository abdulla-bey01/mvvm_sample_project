import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_simple/app/services/login_service.dart';
import 'package:mvvm_simple/app/models/login_model.dart';
import 'package:uuid/uuid.dart';

void main() {
  late ILogInRequestService _loginService;
  setUp(() {
    _loginService = LogInRequestService();
  });
  test('log in testing', () async {
    final _loginModel = LoginModel.createNamed(
      id: const Uuid().v1().toString(),
      username: 'abdullabayli',
      password: 'mypass',
    );
    final _loginResult = await _loginService.logIn(_loginModel);
    expect(_loginResult, isNotNull);
  });
}
