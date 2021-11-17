import '/data/dtos/rgb_color_dto.dart';
import '/data/models/rgb_color_model.dart';

import 'migrator.dart';

class RgbColorMigrator extends Migrator<RgbColorModel, RgbColorDto> {
  @override
  RgbColorDto? migrateToDto(RgbColorModel? model) {
    return RgbColorDto.createNamed(
      model?.red,
      model?.blue,
      model?.green,
    );
  }

  @override
  RgbColorModel? migrateToModel(RgbColorDto? dto) {
    return RgbColorModel.createNamed(
      dto?.red,
      dto?.blue,
      dto?.green,
    );
  }
}
