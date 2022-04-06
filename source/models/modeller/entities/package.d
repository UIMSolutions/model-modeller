module models.modeller.entities;

@safe:
import models.modeller;

public import models.modeller.entities.api;
public import models.modeller.entities.app;
public import models.modeller.entities.attribute;
public import models.modeller.entities.attributeclass;
public import models.modeller.entities.class_;
public import models.modeller.entities.component;
public import models.modeller.entities.entityclass;
public import models.modeller.entities.function_;
public import models.modeller.entities.interface_;
public import models.modeller.entities.library;
public import models.modeller.entities.method;
public import models.modeller.entities.model;
public import models.modeller.entities.module_;
public import models.modeller.entities.package_;

static this() {
  uimEntityRegistry
  .register(MDLApi, MDLApp, MDLAttribute, MDLAttributeClass, MDLClass, MDLComponent, MDLEntityClass, MDLFunction, 
    MDLInterface, MDLLibrary, MDLMethod, MDLModel, MDLModule, MDLPackage);
}