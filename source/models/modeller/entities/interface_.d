module models.modeller.entities.interface_;

@safe:
import models.modeller;

class DMDLInterface : DMDLEntity {
  mixin(OOPEntityThis!("MDLInterface"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_interfaces");
  }
}
mixin(OOPEntityCalls!("MDLInterface"));

