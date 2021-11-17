import '/data//models/login_model.dart';

abstract class ILogInRequestService {
  Future<String?>? logIn(LoginModel? login);
}