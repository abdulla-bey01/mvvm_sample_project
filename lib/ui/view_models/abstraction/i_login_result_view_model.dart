import '../../../app/commands/abstraction/i_base_command.dart';
import '../../../app/helpers/enums/request_state_enum.dart';
import 'base_view_model.dart';

abstract class ILoginResultViewModel extends BaseViewModel {
  IBaseCommand logOutCommand;
  RequestState loginState;

  ILoginResultViewModel({
    required this.logOutCommand,
    required this.loginState,
  }) : super();
}
