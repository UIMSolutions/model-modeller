module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLObj {
  mixin(EntityThis!("MDLModel"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_models");
  }
}
mixin(EntityCalls!("MDLModel"));

