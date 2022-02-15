module models.modeller.entities.class_;

@safe:
import models.modeller;

class DMDLClass : DMDLEntity {
  mixin(OOPEntityThis!("MDLClass"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_classes");
  }
}
mixin(OOPEntityCalls!("MDLClass"));

