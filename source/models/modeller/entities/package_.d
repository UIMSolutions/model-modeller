module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLEntity {
  mixin(EntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .attribute("packageId", OOPUUIDAttribute)
      .registerPath("modeller_packages");
  }
}
mixin(EntityCalls!("MDLPackage"));

