import '/app/start/mvvm_app.dart';
import '/ui/screens/login_screen.dart';

import '/app/commands/abstraction/i_base_command.dart';
import '/ui/view_models/abstraction/base_view_model.dart';

class TryLoginAgainCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel) {
    navigatorKey.currentState?.pushReplacementNamed(LoginScreen.route);
  }
}
