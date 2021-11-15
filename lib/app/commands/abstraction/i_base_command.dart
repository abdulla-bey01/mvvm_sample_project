import '../../../ui/view_models/abstraction/base_view_model.dart';

abstract class IBaseCommand {
  bool canExecute(dynamic data);
  void execute(BaseViewModel? viewModel);
}
