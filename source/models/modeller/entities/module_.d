module models.modeller.entities.module_;

@safe:
import models.modeller;

class DMDLModule : DMDLEntity {
  mixin(EntityThis!("MDLModule"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass,
        "packageId": UUIDAttributeClass
      ])
      .registerPath("modeller_modules");
  }
}
mixin(EntityCalls!("MDLModule"));

