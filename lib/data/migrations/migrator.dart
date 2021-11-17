abstract class Migrator<M, D> {
  M? migrateToModel(D? dto);
  D? migrateToDto(M? model);
}