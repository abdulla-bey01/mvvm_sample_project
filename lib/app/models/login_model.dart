import 'base_model.dart';

class LoginModel extends BaseModel {
    final String? username;
  final String? password;

  LoginModel(
    dynamic id,
    this.username,
    this.password,
  )   : assert(username != null, 'username can not be null'),
        assert(password != null, 'name can not be null'),
        super(id: id);

  LoginModel.createNamed({
    dynamic id,
    this.username,
    this.password,
  })  : assert(username != null, 'username can not be null'),
        assert(password != null, 'name can not be null'),
        super(id: id);
}
