module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLEntity {
  mixin(OOPEntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("packageId", OOPUUIDAttribute)
      .registerPath("modeller_packages");
  }
}
mixin(OOPEntityCalls!("MDLPackage"));

