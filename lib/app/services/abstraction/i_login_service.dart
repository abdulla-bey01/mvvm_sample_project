import '../../../app/helpers/enums/request_state_enum.dart';
import '../../../app/models/login_model.dart';
import '../../../data/dtos/user_dto.dart';

abstract class ILogInRequestService {
  RequestState requestState;
  ILogInRequestService({
    required this.requestState,
  });
  Future<UserDto?>? logIn(LoginModel? login);
}