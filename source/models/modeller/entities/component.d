module models.modeller.entities.component;

@safe:
import models.modeller;

class DMDLComponent : DMDLEntity {
  mixin(EntityThis!("MDLComponent"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "moduleId": UUIDAttributeClass,
        "entityClassId": UUIDAttributeClass,
        "gitHub": StringAttributeClass
      ])
      .registerPath("modeller_components");
  }
}
mixin(EntityCalls!("MDLComponent"));

