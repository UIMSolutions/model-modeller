module models.modeller.entities.function_;

@safe:
import models.modeller;

class DMDLFunction : DMDLObj {
  mixin(EntityThis!("MDLFunction"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "packageId": UUIDAttribute
      ])
      .registerPath("modeller_functions");
  }
}
mixin(EntityCalls!("MDLFunction"));

