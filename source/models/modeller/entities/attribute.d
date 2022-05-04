module models.modeller.entities.attribute;

@safe:
import models.modeller;

class DMDLAttribute : DMDLObj {
  mixin(EntityThis!("MDLAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isNullable": BooleanAttribute,
        "isReadOnly": BooleanAttribute,
        "valueConstrainedToList": BooleanAttribute,
        "modelId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "packageId": UUIDAttribute,
        "libraryId": UUIDAttribute,
        "attributeId": UUIDAttribute,        
        "dataFormat": StringAttribute
      ])
      .registerPath("modeller_attributes");
  }
}
mixin(EntityCalls!("MDLAttribute"));

