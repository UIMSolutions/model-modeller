module models.modeller.entities;

@safe:
import models.modeller;

public import models.modeller.entities.attribute;
public import models.modeller.entities.attributeclass;
public import models.modeller.entities.entityclass;

static this() {
  uimEntityRegistry
  .register(MDLAttribute, MDLAttributeClass, MDLEntityClass);

  writeln("uimEntityRegistry.paths");
  writeln(uimEntityRegistry.paths);
}