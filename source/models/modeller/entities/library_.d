module models.modeller.entities.library;

@safe:
import models.modeller;

class DMDLLibrary : DMDLEntity {
  mixin(EntityThis!("MDLLibrary"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_libraries");
  }
}
mixin(EntityCalls!("MDLLibrary"));

