import '/data/dtos/login_dto.dart';

abstract class IAuthNetworkManager {
  Future<String?> logIn(LoginDto? login);
  Future<dynamic> logOut(String token);
}
