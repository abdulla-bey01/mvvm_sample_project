import 'package:mvvm_simple/app/commands/abstraction/i_base_command.dart';
import 'package:mvvm_simple/app/services/local_token_service.dart';
import 'package:mvvm_simple/ui/view_models/abstraction/base_view_model.dart';

class LogOutCommand extends IBaseCommand {
  @override
  bool canExecute(data) {
    if (data == null || data is! String) return false;
    return true;
  }

  @override
  execute(BaseViewModel? viewModel) async {
    final _localTokenService = LocalTokenService();
    final _token = await _localTokenService.get();
    if (!canExecute(_token)) {
      viewModel!.showSnackBar('There is no logined user in app data');
      return;
    }
    final _tokenIsRemoved = await _localTokenService.remove();
    if (_tokenIsRemoved) {
      viewModel!.showSnackBar('user logout succesfully');
    } else {
      viewModel!.showSnackBar('user could not logout succesfully');
    }
  }
}
