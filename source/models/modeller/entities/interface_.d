module models.modeller.entities.interface_;

@safe:
import models.modeller;

class DMDLInterface : DMDLObj {
  mixin(EntityThis!("MDLInterface"));
  
  override void initialize() {
    super.initialize;

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

