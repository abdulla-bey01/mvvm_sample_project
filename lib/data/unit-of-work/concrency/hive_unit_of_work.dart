import '/data/local/abstraction/i_token_repository.dart';
import '/data/local/concrency/hive_repositories/hive_token_repository.dart';
import '/data/unit-of-work/abstraction/i_unit_of_work.dart';

class HiveUnitOfWork extends IUnitOfWork{
  @override
  ITokenRepository? tokenRepository = HiveTokenRepository();
}