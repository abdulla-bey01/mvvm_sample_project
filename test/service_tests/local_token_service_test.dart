import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_simple/app/services/abstraction/i_local_token_service.dart';
import 'package:mvvm_simple/app/services/local_token_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late IlocalTokenService _localTokenService;
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    _localTokenService = LocalTokenService();
  });
  group('token service test', () {
    test('Token saving test', () async {
      final _tokenSavedSuccesfully =
          await _localTokenService.save(token: '+994703353383');
      expect(_tokenSavedSuccesfully, isTrue);
    });

    test('Token removing test', () async {
      await _localTokenService.save(token: '+994703353383');
      final _tokenRemovedSuccesfully = await _localTokenService.remove();
      expect(_tokenRemovedSuccesfully, isTrue);
    });

    test('Token getting test', () async {
      await _localTokenService.save(token: '+994703353383');
      final _token = await _localTokenService.get();
      expect(_token, isNotNull);
    });
  });
}
