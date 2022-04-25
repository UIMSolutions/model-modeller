module models.modeller.entities.method;

@safe:
import models.modeller;

class DMDLMethod : DMDLEntity {
  mixin(EntityThis!("MDLMethod"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("libraryId", OOPUUIDAttribute)
      .registerPath("modeller_methods");
  }
}
mixin(EntityCalls!("MDLMethod"));

