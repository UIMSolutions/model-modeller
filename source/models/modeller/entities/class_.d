module models.modeller.entities.class_;

@safe:
import models.modeller;

class DMDLClass : DMDLObj {
  mixin(EntityThis!("MDLClass"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "libraryId": UUIDAttribute
      ])
      .registerPath("modeller_classes");
  }
}
mixin(EntityCalls!("MDLClass"));

version(test_model_cms) {
  unittest{
    // TODO - Add tests
  }
}

version(generate_json) {
  static this() {
    // TODO
  }
}