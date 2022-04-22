module models.modeller.entities.interface_;

@safe:
import models.modeller;

class DMDLInterface : DMDLEntity {
  mixin(OOPEntityThis!("MDLInterface"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .registerPath("modeller_interfaces");
  }
}
mixin(OOPEntityCalls!("MDLInterface"));

