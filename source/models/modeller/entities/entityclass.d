module models.modeller.entities.entityclass;

@safe:
import models.modeller;

class DMDLEntityClass : DMDLEntity {
  mixin(OOPEntityThis!("MDLEntityClass"));

  override void initialize() {
    super.initialize;
    
    this
      .attribute("modelId", OOPUUIDAttribute)
      .attribute("entityClassId", OOPUUIDAttribute)
      .attribute("className", OOPStringAttribute)
      .attribute("libraryId", OOPUUIDAttribute)
      .attribute("attributes", OOPStringArrayAttribute)
      .registerPath("modeller_entityclasses"); 
  }
}
mixin(OOPEntityCalls!("MDLEntityClass"));


