module models.modeller.entities.class_;

@safe:
import models.modeller;

class DMDLClass : DMDLObj {
  mixin(EntityThis!("MDLClass"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_classes");
  }
}
mixin(EntityCalls!("MDLClass"));

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