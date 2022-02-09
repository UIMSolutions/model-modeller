module models.modeller.entities.model;

@safe:
import models.modeller;

class DMDLModel : DMDLEntity {
  mixin(OOPEntityThis!("MDLModel"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_models");
  }

  override DOOPEntity clone() { return MDLModel; }
}
mixin(OOPEntityCalls!("MDLModel"));

