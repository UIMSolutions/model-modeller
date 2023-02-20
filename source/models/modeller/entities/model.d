module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLObj {
  mixin(EntityThis!("MDLModel"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_models");
  }
}
mixin(EntityCalls!("MDLModel"));

