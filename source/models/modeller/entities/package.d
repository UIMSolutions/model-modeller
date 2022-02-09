module models.modeller.entities;

@safe:
import models.modeller;

public import models.modeller.entities.attribute;
public import models.modeller.entities.attributeclass;
public import models.modeller.entities.entityclass;
public import models.modeller.entities.model;

static this() {
  uimEntityRegistry
  .register(MDLAttribute, MDLAttributeClass, MDLEntityClass, MDLModel);

  writeln("uimEntityRegistry.paths");
  writeln(uimEntityRegistry.paths);
}