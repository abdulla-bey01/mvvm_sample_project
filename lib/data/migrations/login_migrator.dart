import '/data//models/login_model.dart';
import '../../data/dtos/login_dto.dart';
import 'migrator.dart';

class LoginMigrator extends Migrator<LoginModel, LoginDto> {
  @override
  LoginDto? migrateToDto(LoginModel? model) {
    return LoginDto.createNamed(
      id: model?.id,
      username: model?.username,
      password: model?.password,
    );
  }

  @override
  LoginModel? migrateToModel(LoginDto? dto) {
    return LoginModel.createNamed(
      id: dto?.id,
      username: dto?.username,
      password: dto?.password,
    );
  }
}
