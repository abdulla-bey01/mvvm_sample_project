import '/data/local/abstraction/i_token_repository.dart';

abstract class IUnitOfWork{
  abstract ITokenRepository? tokenRepository;
}