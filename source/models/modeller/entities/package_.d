module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLObj {
  mixin(EntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "packageId": UUIDAttribute
      ])
      .registerPath("modeller_packages");
  }
}
mixin(EntityCalls!("MDLPackage"));

