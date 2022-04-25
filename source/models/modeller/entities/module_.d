module models.modeller.entities.module_;

@safe:
import models.modeller;

class DMDLModule : DMDLEntity {
  mixin(EntityThis!("MDLModule"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .attribute("packageId", OOPUUIDAttribute)
      .registerPath("modeller_modules");
  }
}
mixin(EntityCalls!("MDLModule"));

