import '../../local/abstraction/i_token_repository.dart';
import '../../local/concrency/share_preferences_repositories/shared_preferences_token_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../abstraction/i_unit_of_work.dart';

class SharedPreferencesUnitOfWork extends IUnitOfWork {
  @override
  ITokenRepository? tokenRepository =
      SharedPreferencesTokenRepository(SharedPreferences.getInstance());
}
