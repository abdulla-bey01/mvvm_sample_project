import 'base_model.dart';

class LoginModel extends BaseModel {
  String? email;
  String? password;

  LoginModel({
    dynamic id,
    this.email,
    this.password,
  }) : super(id: id);

  LoginModel.createNamed({
    dynamic id,
    this.email,
    this.password,
  }) : super(id: id);
}
