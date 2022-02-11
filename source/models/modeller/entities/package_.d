module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLEntity {
  mixin(OOPEntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("packageler_packages");
  }

  override DOOPEntity clone() { return MDLPackage; }
}
mixin(OOPEntityCalls!("MDLPackage"));

