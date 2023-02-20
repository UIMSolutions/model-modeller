module models.modeller.entities.attribute;

@safe:
import models.modeller;

class DMDLAttribute : DMDLObj {
  mixin(EntityThis!("MDLAttribute"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "isNullable": BooleanAttribute,
        "isReadOnly": BooleanAttribute,
        "valueConstrainedToList": BooleanAttribute,
        "attributeId": UUIDAttribute,
        "modelId": UUIDAttribute,
        "moduleId": UUIDAttribute,
        "packageId": UUIDAttribute,
        "libraryId": UUIDAttribute,
        "dataFormats": StringAttribute
      ])
      .registerPath("modeller_attributes");
  }
}
mixin(EntityCalls!("MDLAttribute"));

version(test_model_modeller) {
  unittest{
    assert(MDLAttribute);

    auto entity = MDLAttribute;
    testEntityStringAttributes(entity, [  "dataFormats"]);
    testEntityUUIDAttributes(entity, ["attributeId", "modelId", "moduleId", "packageId", "libraryId"]);
  }
}

version(generate_json) {
  static this() {
    // TODO
  }
}