module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLObj {
  mixin(EntityThis!("MDLModel"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_models");
  }
}
mixin(EntityCalls!("MDLModel"));

