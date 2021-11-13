import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'abstraction/i_local_token_service.dart';



class LocalTokenService extends IlocalTokenService {
  LocalTokenService() : super(SharedPreferences.getInstance());

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
  Future<bool> save({@required String? token}) async {
    final _prefs = await preferencesIsBeingCreated;
    final _successfullySaved =
        await _prefs.setString(runtimeType.toString(), token ?? 'token');
    return _successfullySaved;
  }
}
