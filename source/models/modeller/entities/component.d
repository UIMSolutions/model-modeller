module models.modeller.entities.component;

@safe:
import models.modeller;

class DMDLComponent : DMDLObj {
  mixin(EntityThis!("MDLComponent"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "moduleId": UUIDAttribute,
        "entityClassId": UUIDAttribute,
        "gitHub": StringAttribute
      ])
      .registerPath("modeller_components");
  }
}
mixin(EntityCalls!("MDLComponent"));

version(test_model_modeller) {
  unittest{
    // TODO - Add tests
  }
}

version(generate_json) {
  static this() {
    // TODO
  }
}