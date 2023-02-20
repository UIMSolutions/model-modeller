module models.modeller.entities.control;

@safe:
import models.modeller;

class DMDLControl : DMDLObj {
  mixin(EntityThis!("MDLControl"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "category": StringAttribute,
      ])
      .registerPath("modeller_controls");
  }
}
mixin(EntityCalls!("MDLControl"));

version(test_model_modeller) {
  unittest{
    assert(MDLControl);

    auto entity = MDLControl;
    testEntityStringAttributes(entity, ["category", "gitHub"]);
    testEntityUUIDAttributes(entity, ["libraryId", "moduleId"]);
  }
}

version(generate_json) {
  static this() {
    // TODO
  }
}