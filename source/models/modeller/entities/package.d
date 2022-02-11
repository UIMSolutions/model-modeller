module models.modeller.entities;

@safe:
import models.modeller;

public import models.modeller.entities.attribute;
public import models.modeller.entities.attributeclass;
public import models.modeller.entities.entityclass;
public import models.modeller.entities.method;
public import models.modeller.entities.model;
public import models.modeller.entities.module_;
public import models.modeller.entities.package_;

static this() {
  uimEntityRegistry
  .register(MDLAttribute, MDLAttributeClass, MDLEntityClass, MDLMethod, MDLModel, MDLModule, MDLPackage);

  writeln("uimEntityRegistry.paths");
  writeln(uimEntityRegistry.paths);
}