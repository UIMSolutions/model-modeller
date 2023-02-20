module models.modeller.entities.app;

@safe:
import models.modeller;

class DMDLApp : DMDLObj {
  mixin(EntityThis!("MDLApp"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .registerPath("modeller_apps");
  }
}
mixin(EntityCalls!("MDLApp"));

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