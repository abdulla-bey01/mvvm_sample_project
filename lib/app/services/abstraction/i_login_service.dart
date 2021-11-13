import 'package:mvvm_simple/app/helpers/enums/request_state_enum.dart';
import 'package:mvvm_simple/app/models/login_model.dart';
import 'package:mvvm_simple/data/dtos/user_dto.dart';

abstract class ILogInRequestService {
  RequestState requestState;
  ILogInRequestService({
    required this.requestState,
  });
  Future<UserDto?>? logIn(LoginModel? login);
}