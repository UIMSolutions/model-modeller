module models.modeller.entities.attributeclass;

@safe:
import models.modeller;

class DMDLAttributeClass : DMDLEntity {
  mixin(EntityThis!("MDLAttributeClass"));
  
  mixin(SProperty!("UUID", "demo"));

  override void initialize() {
    super.initialize;

    this
      .attribute("modelId", OOPUUIDAttribute)
      .attribute("libraryId", OOPUUIDAttribute)
      .attribute("attributeClassId", OOPUUIDAttribute)
      .registerPath("modeller_attributeclasses");
  }

  override DOOPEntity fromJson(Json aJson) {
    if (aJson == Json(null)) return this;
    super.fromJson(aJson);
    
     foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "demo": this.demo(UUID(v.get!string)); break;
        default: break;
      }      
    } 
    return this;
  }

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);
    
    if (showFields.length == 0) {
      if (!hideFields.exist("demo")) result["demo"] = this.demo.toString;
    }
    else {
      if ((showFields.exist("demo")) && (!hideFields.exist("demo"))) result["demo"] = this.demo.toString;
    }
    
    return result;
  }
}
mixin(EntityCalls!("MDLAttributeClass"));


