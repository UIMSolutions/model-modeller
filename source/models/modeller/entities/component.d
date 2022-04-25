module models.modeller.entities.component;

@safe:
import models.modeller;

class DMDLComponent : DMDLEntity {
  mixin(EntityThis!("MDLComponent"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("moduleId", OOPUUIDAttribute)
      .attribute("entityClassId", OOPUUIDAttribute)
      .attribute("gitHub", OOPStringAttribute)
      .registerPath("modeller_components");
  }
}
mixin(EntityCalls!("MDLComponent"));

