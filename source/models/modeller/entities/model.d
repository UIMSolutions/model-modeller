module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLEntity {
  mixin(OOPEntityThis!("MDLModel"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .registerPath("modeller_models");
  }
}
mixin(OOPEntityCalls!("MDLModel"));

