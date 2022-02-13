module models.modeller.entities.module_;

@safe:
import models.modeller;

class DMDLModule : DMDLEntity {
  mixin(OOPEntityThis!("MDLModule"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("packageId", OOPUUIDAttribute)
      .registerPath("modeller_modules");
  }

  override DOOPEntity clone() { return MDLModule; }
}
mixin(OOPEntityCalls!("MDLModule"));

