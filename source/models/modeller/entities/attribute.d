module models.modeller.entities.attribute;

@safe:
import models.modeller;

class DMDLAttribute : DMDLEntity {
  mixin(OOPEntityThis!("MDLAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .attribute("isNullable", OOPBooleanAttribute)
      .attribute("isReadOnly", OOPBooleanAttribute)
      .attribute("dataFormat", OOPStringAttribute)
      .registerPath("modeller_attributes");
  }

  override DOOPEntity clone() { return MDLAttribute; }
}
mixin(OOPEntityCalls!("MDLAttribute"));

