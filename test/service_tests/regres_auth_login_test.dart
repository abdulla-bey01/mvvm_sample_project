import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_simple/app/auth/concrency/reqres/reqres_auth_network_manager.dart';
import 'package:mvvm_simple/app/auth/abstraction/base/i_auth_network_manager.dart';
import 'package:mvvm_simple/data/dtos/login_dto.dart';
import 'package:uuid/uuid.dart';

void main() {
  late IAuthNetworkManager _authManager;
  setUp(() {
    _authManager = ReqResAuthNetworkManager();
  });
  test('regres log in testing', () async {
    final _loginDto = LoginDto.createNamed(
      id: const Uuid().v1().toString(),
      email: 'eve.holt@reqres.in',
      password: 'pistol',
    );
    final _loginResult = await _authManager.logIn(_loginDto);
    expect(_loginResult, isNotNull);
  });
}
