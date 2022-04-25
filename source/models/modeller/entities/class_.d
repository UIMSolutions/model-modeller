module models.modeller.entities.class_;

@safe:
import models.modeller;

class DMDLClass : DMDLEntity {
  mixin(EntityThis!("MDLClass"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .registerPath("modeller_classes");
  }
}
mixin(EntityCalls!("MDLClass"));

