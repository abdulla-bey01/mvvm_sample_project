import 'base_model.dart';

class LoginModel extends BaseModel {
  String? email;
  String? password;

  LoginModel({
    dynamic id,
    this.email,
    this.password,
  }) {
    this.id = id;
  }

  LoginModel.createNamed({
    dynamic id,
    this.email,
    this.password,
  }) {
    this.id = id;
  }
}
