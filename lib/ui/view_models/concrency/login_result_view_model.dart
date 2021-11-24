import '/app/commands/concrency/pass_to_main_screen_command.dart';
import '/app/commands/concrency/try_login_again_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_login_result_view_model.dart';

class LoginResultViewModel extends ILoginResultViewModel {
  LoginResultViewModel(RequestState loginState)
      : super(
          loginState: loginState,
          tryLoginAgainCommand: TryLoginAgainCommand(),
          passToMainScreenCommand: PassToMainScreenCommand(),
        );

  @override
  void initialize() {}
}
