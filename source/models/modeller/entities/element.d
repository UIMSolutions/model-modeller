module models.modeller.entities.element;

@safe:
import models.modeller;

class DMDLElement : DMDLObj {
  mixin(EntityThis!("MDLElement"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "gitHub": StringAttribute
      ])
      .registerPath("modeller_elements");
  }
}
mixin(EntityCalls!("MDLElement"));

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