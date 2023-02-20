module models.modeller.entities.api;

@safe:
import models.modeller;

class DMDLApi : DMDLObj {
  mixin(EntityThis!("MDLApi"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .registerPath("modeller_apis");
  }
}
mixin(EntityCalls!("MDLApi"));

version(test_model_modeller) {
  unittest{
    // TODO - Add tests
  }
}