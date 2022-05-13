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

unittest { // Test attribute "imagePath"
  version(test_model_cms) {
    auto obj = new MDLObj;
    obj["imagePath"] = "something";
    assert(obj["imagePath"] == "something"); 
    
    obj["imagePath"] = "nothing";
    assert(obj["imagePath"] == "nothing"); 

    auto json = Json.emptyObject;
    json["imagePath"] = "nothing";
    writeln(json);
    obj.fromJson(json);
    assert(obj["imagePath"] == "nothing"); 

    json["imagePath"] = "something";
    obj["imagePath"] = json.get!string;
    assert(obj["imagePath"] == "something"); 

    assert("imagePath" in obj.toJson);
    assert(obj.toJson["imagePath"].get!string == "something");
  }
}

unittest { // Test attribute "isIndex"
  version(test_model_cms) {
    auto obj = CMSPost;
    obj["isIndex"] = "true";
    assert(obj["isIndex"] == "true"); 
    
    obj["isIndex"] = "false";
    assert(obj["isIndex"] == "false"); 

    auto json = Json.emptyObject;
    json["isIndex"] = false;
    writeln(json);
    obj.fromJson(json);
    assert(obj["isIndex"] == "false"); 

    json["isIndex"] = true;
    obj.fromJson(json);
    assert(obj["isIndex"] == "true"); 

    assert("isIndex" in obj.toJson);
    assert(obj.toJson["isIndex"].get!bool == true);
    }}

unittest { // Test attribute "maintitle"
  version(test_model_cms) {
    auto obj = CMSPost;
    obj["mainTitle"] = "something";
    assert(obj["mainTitle"] == "something"); 
    
    obj["mainTitle"] = "nothing";
    assert(obj["mainTitle"] == "nothing"); 

    auto json = Json.emptyObject;
    json["mainTitle"] = "nothing";
    writeln(json);
    obj.fromJson(json);
    assert(obj["mainTitle"] == "nothing"); 

    json["mainTitle"] = "something";
    obj.fromJson(json);
    assert(obj["mainTitle"] == "something"); 

    assert("mainTitle" in obj.toJson);
    assert(obj.toJson["mainTitle"].get!string == "something");
  }
}

unittest { // Test attribute "subTitle"
  version(test_model_cms) {
    auto obj = CMSPost;
    obj["subTitle"] = "something";
    assert(obj["subTitle"] == "something"); 
    
    obj["subTitle"] = "nothing";
    assert(obj["subTitle"] == "nothing"); 

    auto json = Json.emptyObject;
    json["subTitle"] = "nothing";
    writeln(json);
    obj.fromJson(json);
    assert(obj["subTitle"] == "nothing"); 

    json["subTitle"] = "something";
    obj.fromJson(json);
    assert(obj["subTitle"] == "something"); 

    assert("subTitle" in obj.toJson);
    assert(obj.toJson["subTitle"].get!string == "something");
  }
}

unittest { // Test attribute "summary"
  version(test_model_cms) {
    auto obj = CMSPost;
    obj["summary"] = "something";
    assert(obj["summary"] == "something"); 
    
    obj["summary"] = "nothing";
    assert(obj["summary"] == "nothing"); 

    auto json = Json.emptyObject;
    json["summary"] = "nothing";
    writeln(json);
    obj.fromJson(json);
    assert(obj["summary"] == "nothing"); 

    json["summary"] = "something";
    obj.fromJson(json);
    assert(obj["summary"] == "something"); 

    assert("summary" in obj.toJson);
    assert(obj.toJson["summary"].get!string == "something");
  }
}

unittest { // Test attribute "text"
  version(test_model_cms) {
    auto obj = CMSPost;
    obj["text"] = "something";
    assert(obj["text"] == "something"); 
    
    obj["text"] = "nothing";
    assert(obj["text"] == "nothing"); 

    auto json = Json.emptyObject;
    json["text"] = "nothing";
    writeln(json);
    obj.fromJson(json);
    assert(obj["text"] == "nothing"); 

    json["text"] = "something";
    obj.fromJson(json);
    assert(obj["text"] == "something"); 

    assert("text" in obj.toJson);
    assert(obj.toJson["text"].get!string == "something");
  }
}