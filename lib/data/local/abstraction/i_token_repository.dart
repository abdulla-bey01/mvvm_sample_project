import 'package:flutter/foundation.dart';

abstract class ITokenRepository {
  Future<bool> save({@required String? token});
  Future<String?> get();
  Future<bool> remove();
  Future<bool> update({@required String? token});
}
