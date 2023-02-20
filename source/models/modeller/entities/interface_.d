module models.modeller.entities.interface_;

@safe:
import models.modeller;

class DMDLInterface : DMDLObj {
  mixin(EntityThis!("MDLInterface"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "packageId": UUIDAttribute
      ])
      .registerPath("modeller_interfaces");
  }
}
mixin(EntityCalls!("MDLInterface"));

