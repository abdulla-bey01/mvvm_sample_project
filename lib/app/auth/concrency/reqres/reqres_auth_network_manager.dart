import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../../abstraction/i_auth_network_manager.dart';
import '../../abstraction/regres/i_regres_network_manager.dart';
import '/data/dtos/login_dto.dart';

class ReqResAuthNetworkManager extends IRegResNetworkManager
    with IAuthNetworkManager {
  final int successCode = 200;
  final int notFoundCode = 404;
  @override
  Future<String?> logIn(LoginDto? login) async {
    try {
      final _url = baseUrl + '/api/login';
      final _jsonBody = login?.toJson();
      final _response = await client.post(
        Uri.parse(_url),
        body: _jsonBody,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (_response.statusCode == successCode) {
        final _responseBodyToMap =
            json.decode(_response.body) as Map<String, dynamic>;
        //
        final _token = _responseBodyToMap['token'];
        return _token;
      } else {
        throw Exception('Error on auth');
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future logOut(String token) async {
    debugPrint('log outed');
    return true;
  }
}
