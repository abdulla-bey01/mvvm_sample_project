import 'base_model.dart';

class VendorModel extends BaseModel {
  final String? name;

  VendorModel.createNamed({
    required dynamic id,
    required this.name,
  }) : super(id: id);
}
