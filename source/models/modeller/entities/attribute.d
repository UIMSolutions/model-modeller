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
    // TODO - Add tests
  }
}

version(generate_json) {
  static this() {
    // TODO
  }
}