module models.modeller.entities.function_;

@safe:
import models.modeller;

class DMDLFunction : DMDLEntity {
  mixin(EntityThis!("MDLFunction"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass,
        "moduleId": UUIDAttributeClass,
        "packageId": UUIDAttributeClass
      ])
      .registerPath("modeller_functions");
  }
}
mixin(EntityCalls!("MDLFunction"));

