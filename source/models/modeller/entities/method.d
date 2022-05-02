module models.modeller.entities.method;

@safe:
import models.modeller;

class DMDLMethod : DMDLEntity {
  mixin(EntityThis!("MDLMethod"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass
      ])
      .registerPath("modeller_methods");
  }
}
mixin(EntityCalls!("MDLMethod"));

