module models.modeller.entities.entity;

@safe:
import models.modeller;

class DMDLEntity : DMDLObj {
  mixin(EntityThis!("MDLEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);
    
    this
      .addValues([
        "modelId": UUIDAttribute,
        "entityClassId": UUIDAttribute,
        "libraryId": UUIDAttribute,
        "modelId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "packageId": UUIDAttribute,
        "className": StringAttribute/* ,
        "attributes": StringArrayAttribute */
      ])
      .registerPath("modeller_entities"); 
  }
}
mixin(EntityCalls!("MDLEntity"));


