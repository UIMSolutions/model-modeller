module models.modeller.entities.entityclass;

@safe:
import models.modeller;

class DMDLEntityClass : DMDLEntity {
  mixin(EntityThis!("MDLEntityClass"));

  override void initialize() {
    super.initialize;
    
    this
      .addValues([
        "modelId": UUIDAttributeClass,
        "entityClassId": UUIDAttributeClass,
        "libraryId": UUIDAttributeClass,
        "modelId": UUIDAttributeClass,
        "className": StringAttributeClass/* ,
        "attributes": StringArrayAttributeClass */
      ])
      .registerPath("modeller_entityclasses"); 
  }
}
mixin(EntityCalls!("MDLEntityClass"));


