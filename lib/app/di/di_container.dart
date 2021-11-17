import '../../data/unit-of-work/abstraction/i_unit_of_work.dart';
import '../../data/unit-of-work/concrency/shared_preferences_unit_of_work.dart';

class AppDiContainer {
  late IUnitOfWork unitOfWork;
  
  static AppDiContainer get instance => _instance ??= AppDiContainer._();
  static AppDiContainer? _instance;
  AppDiContainer._() {
    unitOfWork = SharedPreferencesUnitOfWork();
  }
}
