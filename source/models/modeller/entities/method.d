module models.modeller.entities.method;

@safe:
import models.modeller;

class DMDLMethod : DMDLObj {
  mixin(EntityThis!("MDLMethod"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_methods");
  }
}
mixin(EntityCalls!("MDLMethod"));

