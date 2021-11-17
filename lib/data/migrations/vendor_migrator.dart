import '/data/dtos/vendor_dto.dart';
import '/data/models/vendor_model.dart';
import 'migrator.dart';

class VendorMigrator extends Migrator<VendorModel, VendorDto> {
  @override
  VendorDto? migrateToDto(VendorModel? model) {
    return VendorDto.createNamed(
      id: model?.id,
      name: model?.name,
    );
  }

  @override
  VendorModel? migrateToModel(VendorDto? dto) {
    return VendorModel.createNamed(
      id: dto?.id,
      name: dto?.name,
    );
  }
}
