import 'package:flutter/foundation.dart';
import '../../../app/di/di_container.dart';
import '../../../data/local/abstraction/i_token_repository.dart';
import '../abstraction/i_local_token_service.dart';

class LocalTokenService extends IlocalTokenService {
  @override
  Future<String?> get() async {
    ITokenRepository? _repository =
        AppDiContainer.instance.unitOfWork.tokenRepository;
    return _repository!.get();
  }

  @override
  Future<bool> remove() async {
    ITokenRepository? _repository =
        AppDiContainer.instance.unitOfWork.tokenRepository;
    final _successfullyRemoved = await _repository!.remove();
    return _successfullyRemoved;
  }

  @override
  Future<bool> save({@required String? token}) async {
    ITokenRepository? _repository =
        AppDiContainer.instance.unitOfWork.tokenRepository;
    final _successfullySaved = await _repository!.save(token: token ?? 'token');
    return _successfullySaved;
  }

  @override
  Future<bool> update({String? token}) async {
    ITokenRepository? _repository =
        AppDiContainer.instance.unitOfWork.tokenRepository;
    final _successfullySaved =
        await _repository!.update(token: token ?? 'token');
    return _successfullySaved;
  }
}
