import '../../../app/commands/abstraction/i_base_command.dart';
import '../../services/concrency/local_token_service.dart';
import '../../../ui/screens/login_screen.dart';
import '../../../ui/view_models/abstraction/base_view_model.dart';

import '../../../main.dart';

class LogOutCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    if (data == null || data is! String) return false;
    return true;
  }

  @override
  void execute(BaseViewModel? viewModel) async {
    final _localTokenService = LocalTokenService();
    final _token = await _localTokenService.get();
    if (!canExecute(_token)) {
      viewModel!.showSnackBar!('user could not logout');
      return;
    }
    final _tokenIsRemoved = await _localTokenService.remove();
    if (_tokenIsRemoved) {
      //if you use pop in stead of pushReplacement, the datas user entered in login fields will be kept in textFields when you pop to previous screen
      navigatorKey.currentState?.pushNamed(LoginScreen.route);
    } else {
      viewModel!.showSnackBar!('user could not logout succesfully');
    }
  }
}
