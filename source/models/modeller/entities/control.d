module models.modeller.entities.control;

@safe:
import models.modeller;

class DMDLControl : DMDLObj {
  mixin(EntityThis!("MDLControl"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "gitHub": StringAttribute
      ])
      .registerPath("modeller_controls");
  }
}
mixin(EntityCalls!("MDLControl"));

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