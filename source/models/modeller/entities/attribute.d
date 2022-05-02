module models.modeller.entities.attribute;

@safe:
import models.modeller;

class DMDLAttribute : DMDLEntity {
  mixin(EntityThis!("MDLAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isNullable": BooleanAttributeClass,
        "isReadOnly": BooleanAttributeClass,
        "valueConstrainedToList": BooleanAttributeClass,
        "modelId": UUIDAttributeClass,
        "moduleId": UUIDAttributeClass,
        "packageId": UUIDAttributeClass,
        "libraryId": UUIDAttributeClass,
        "attributeClassId": UUIDAttributeClass,        
        "dataFormat": StringAttributeClass
      ])
      .registerPath("modeller_attributes");
  }
}
mixin(EntityCalls!("MDLAttribute"));

