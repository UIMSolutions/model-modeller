module models.modeller.classes.obj;

@safe:
import models.modeller;

class DMDLObj : DOOPObj {
  mixin(EntityThis!("MDLObj"));
  
  override void initialize() {
    super.initialize;

    this
    .addValues([
      "keywords": TagsAttribute, 
      "summary": StringAttribute,
      "imagePath": StringAttribute,
      "text": StringAttribute,
      "githubLink": StringAttribute,
      "mainTitle": StringAttribute,
      "subTitle":  StringAttribute
    ]);
  }

  override DOOPObj fromRequest(STRINGAA parameters) {
    super.fromRequest(parameters);
    foreach(k, v; [
      "obj_imagepath":"imagePath", 
      "obj_isindex":"isIndex", 
      "obj_maintitle":"mainTitle", 
      "obj_keywords":"keywords", 
      "obj_subtitle":"subTitle", 
      "obj_summary":"summary", 
      "obj_text":"text"]) {
      if (k in parameters) this[v] = parameters[k];
    }
    return this;
  }
  unittest {
    version(test_model_cms) {
      // TOD Add Tests
    }}
}
mixin(EntityCalls!("MDLObj"));
