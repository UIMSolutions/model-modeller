module models.modeller.entities.method;

@safe:
import models.modeller;

class DMDLMethod : DMDLObj {
  mixin(EntityThis!("MDLMethod"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_methods");
  }
}
mixin(EntityCalls!("MDLMethod"));

