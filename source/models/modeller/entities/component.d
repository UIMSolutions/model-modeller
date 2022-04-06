module models.modeller.entities.component;

@safe:
import models.modeller;

class DMDLComponent : DMDLEntity {
  mixin(OOPEntityThis!("MDLComponent"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_components");
  }
}
mixin(OOPEntityCalls!("MDLComponent"));

