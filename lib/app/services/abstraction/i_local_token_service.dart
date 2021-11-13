import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IlocalTokenService {
  final Future<SharedPreferences> preferencesIsBeingCreated;
  IlocalTokenService(this.preferencesIsBeingCreated);

  Future<bool> save({@required String? token});
  Future<String?> get();
  Future<bool> remove();
}