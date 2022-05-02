module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLEntity {
  mixin(EntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass,
        "packageId": UUIDAttributeClass
      ])
      .registerPath("modeller_packages");
  }
}
mixin(EntityCalls!("MDLPackage"));

