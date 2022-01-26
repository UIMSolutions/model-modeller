module models.modeller;

public import std.stdio;
public import std.string;
public import std.uuid;

// Dub
public import vibe.d;

public import uim.core;
public import uim.oop;
public import uim.entities;

// public import uim.models;

public import models.modeller.classes;
public import models.modeller.entities;
public import models.modeller.tests;

static this() {
  uimRegistryEntities
  .register(MDLAttribute.registerPath, MDLAttribute)
  .register(MDLAttributeClass.registerPath, MDLAttributeClass)
  .register(MDLEntityClass.registerPath, MDLEntityClass);
}