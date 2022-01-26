module models.modeller.entities.entityclass;

@safe:
import models.modeller;

class DMDLEntityClass : DMDLEntity {
  mixin(OOPEntityThis!("MDLEntityClass"));

  override void initialize() {
    super.initialize;
    
    this
    .attribute("docu", OOPAttributeUUID)
    .registerPath("modeller/entityClass"); 
  }

  override DOOPEntity clone() { return MDLEntityClass; }
}
mixin(OOPEntityCalls!("MDLEntityClass"));


