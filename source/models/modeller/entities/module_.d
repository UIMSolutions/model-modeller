module models.modeller.entities.module_;

@safe:
import models.modeller;

class DMDLModule : DMDLObj {
  mixin(EntityThis!("MDLModule"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "packageId": UUIDAttribute
      ])
      .registerPath("modeller_modules");
  }
}
mixin(EntityCalls!("MDLModule"));

