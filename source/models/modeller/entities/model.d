module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLEntity {
  mixin(EntityThis!("MDLModel"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass
      ])
      .registerPath("modeller_models");
  }
}
mixin(EntityCalls!("MDLModel"));

