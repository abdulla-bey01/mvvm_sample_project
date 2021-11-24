import 'base_model.dart';

class UserInfoModel extends BaseModel {
  final String fullname;
  final String email;
  final String imgUrl;

  UserInfoModel.createNamed({
    required this.fullname,
    required this.email,
    required this.imgUrl,
  });
}
