import '../../../app/commands/concrency/logout_command.dart';
import '../../../app/helpers/enums/request_state_enum.dart';
import '../../../ui/view_models/abstraction/i_login_result_view_model.dart';

class LoginResultViewModel extends ILoginResultViewModel {
  LoginResultViewModel(RequestState loginState)
      : super(logOutCommand: LogOutCommand(), loginState: loginState);
}
