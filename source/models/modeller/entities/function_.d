module models.modeller.entities.function_;

@safe:
import models.modeller;

class DMDLFunction : DMDLObj {
  mixin(EntityThis!("MDLFunction"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

