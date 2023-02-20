module models.modeller.entities.package_;

@safe:
import models.modeller;

class DMDLPackage : DMDLObj {
  mixin(EntityThis!("MDLPackage"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "libraryId": UUIDAttribute,
        "packageId": UUIDAttribute
      ])
      .registerPath("modeller_packages");
  }
}
mixin(EntityCalls!("MDLPackage"));

auto packageById(string id, DMDLPackage[] packages) {
  foreach(pack; packages) { if (id == pack["id"]) return pack; }
  return null;
}

bool isSubPackageOf(DMDLPackage aPackage, DMDLPackage thePackage, DMDLPackage[] packages) {
  if (thePackage["id"] == aPackage["packageId"]) return true;

  if (auto superPackage = packageById(aPackage["packageId"], packages)) {
    return superPackage.isSubPackageOf(thePackage, packages);
  } 

  return false;
}