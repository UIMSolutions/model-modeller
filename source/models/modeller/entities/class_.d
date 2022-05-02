module models.modeller.entities.class_;

@safe:
import models.modeller;

class DMDLClass : DMDLEntity {
  mixin(EntityThis!("MDLClass"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttributeClass
      ])
      .registerPath("modeller_classes");
  }
}
mixin(EntityCalls!("MDLClass"));

