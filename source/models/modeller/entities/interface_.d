module models.modeller.entities.interface_;

@safe:
import models.modeller;

class DMDLInterface : DMDLEntity {
  mixin(EntityThis!("MDLInterface"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .registerPath("modeller_interfaces");
  }
}
mixin(EntityCalls!("MDLInterface"));

