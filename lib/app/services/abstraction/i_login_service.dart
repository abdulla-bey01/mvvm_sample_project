import '/data//models/login_model.dart';
import '../../../data/dtos/user_dto.dart';

abstract class ILogInRequestService {
  Future<UserDto?>? logIn(LoginModel? login);
}