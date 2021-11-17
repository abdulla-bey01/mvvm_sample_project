import '../../../app/commands/abstraction/i_base_command.dart';
import '../../../app/helpers/enums/request_state_enum.dart';
import 'base_view_model.dart';

abstract class ILoginResultViewModel extends BaseViewModel {
  IBaseCommand tryLoginAgainCommand;
  IBaseCommand passToMainScreenCommand;
  RequestState loginState;

  ILoginResultViewModel({
    required this.loginState,
    required this.tryLoginAgainCommand,
    required this.passToMainScreenCommand,
  }) : super();
}
