module models.modeller.entities.function_;

@safe:
import models.modeller;

class DMDLFunction : DMDLEntity {
  mixin(OOPEntityThis!("MDLFunction"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_functions");
  }
}
mixin(OOPEntityCalls!("MDLFunction"));

