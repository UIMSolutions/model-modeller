module models.modeller.entities.library;

@safe:
import models.modeller;

class DMDLLibrary : DMDLObj {
  mixin(EntityThis!("MDLLibrary"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_libraries");
  }
}
mixin(EntityCalls!("MDLLibrary"));

