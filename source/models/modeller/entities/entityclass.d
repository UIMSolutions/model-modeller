module models.modeller.entities.entityclass;

@safe:
import models.modeller;

class DMDLEntityClass : DMDLEntity {
  mixin(OOPEntityThis!("MDLEntityClass"));

  override void initialize() {
    super.initialize;
    
    this
      .registerPath("modeller_entityclasses"); 
  }

  override DOOPEntity clone() { return MDLEntityClass; }
}
mixin(OOPEntityCalls!("MDLEntityClass"));


