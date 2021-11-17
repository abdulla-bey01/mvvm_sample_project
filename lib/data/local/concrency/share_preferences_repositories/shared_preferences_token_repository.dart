import 'package:shared_preferences/shared_preferences.dart';
import '../../../../data/local/abstraction/i_token_repository.dart';

class SharedPreferencesTokenRepository extends ITokenRepository {
  final Future<SharedPreferences> preferencesIsBeingCreated;
  SharedPreferencesTokenRepository(this.preferencesIsBeingCreated);

  @override
  Future<String?> get() async {
    final _prefs = await preferencesIsBeingCreated;
    final _token = _prefs.getString(runtimeType.toString());
    return _token;
  }

  @override
  Future<bool> remove() async {
    final _prefs = await preferencesIsBeingCreated;
    final _successfullyRemoved = await _prefs.remove(runtimeType.toString());
    return _successfullyRemoved;
  }

  @override
  Future<bool> save({String? token}) async {
    final _prefs = await preferencesIsBeingCreated;
    final _successfullySaved =
        await _prefs.setString(runtimeType.toString(), token ?? 'token');
    return _successfullySaved;
  }

  @override
  Future<bool> update({String? token}) async {
    final _prefs = await preferencesIsBeingCreated;
    final _successfullyUpdated =
        await _prefs.setString(runtimeType.toString(), token ?? 'token');
    return _successfullyUpdated;
  }
}
