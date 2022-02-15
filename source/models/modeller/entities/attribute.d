module models.modeller.entities.attribute;

@safe:
import models.modeller;

class DMDLAttribute : DMDLEntity {
  mixin(OOPEntityThis!("MDLAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("modelId", OOPUUIDAttribute)
      .attribute("attributeClassId", OOPUUIDAttribute)
      .attribute("isNullable", OOPBooleanAttribute)
      .attribute("isReadOnly", OOPBooleanAttribute)
      .attribute("valueConstrainedToList", OOPBooleanAttribute)
      .attribute("dataFormat", OOPStringAttribute)
      .registerPath("modeller_attributes");
  }
}
mixin(OOPEntityCalls!("MDLAttribute"));

