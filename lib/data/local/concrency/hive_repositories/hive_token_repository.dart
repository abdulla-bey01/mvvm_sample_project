import 'package:flutter/foundation.dart';

import '/data/local/abstraction/i_token_repository.dart';

class HiveTokenRepository extends ITokenRepository {
  @override
  Future<String?> get() async {
    return 'token from hive';
  }

  @override
  Future<bool> remove() async {
    debugPrint('token is removed from hive');
    return true;
  }

  @override
  Future<bool> save({String? token}) async {
    debugPrint('token is saved to hive');
    return true;
  }

  @override
  Future<bool> update({String? token}) async {
    debugPrint('token is updated in hive');
    return true;
  }
}
