module models.modeller.entities.app;

@safe:
import models.modeller;

class DMDLApp : DMDLObj {
  mixin(EntityThis!("MDLApp"));
  
  override void initialize() {
    super.initialize;

    this
      .registerPath("modeller_apps");
  }
}
mixin(EntityCalls!("MDLApp"));

