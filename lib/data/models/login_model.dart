import 'base_model.dart';

class LoginModel extends BaseModel {
  String? username;
  String? password;

  LoginModel({
    dynamic id,
    this.username,
    this.password,
  }) {
    this.id = id;
  }

  LoginModel.createNamed({
    dynamic id,
    this.username,
    this.password,
  }) {
    this.id = id;
  }
}
