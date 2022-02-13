module models.modeller.entities.method;

@safe:
import models.modeller;

class DMDLMethod : DMDLEntity {
  mixin(OOPEntityThis!("MDLMethod"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_methods");
  }

  override DOOPEntity clone() { return MDLMethod; }
}
mixin(OOPEntityCalls!("MDLMethod"));

