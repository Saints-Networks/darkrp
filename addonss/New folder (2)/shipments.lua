--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]


DarkRP.createShipment("Thermal Detonator", {
    model = "models/weapons/tfa_starwars/w_thermal.mdl",
    entity = "zeus_thermaldet",
    price = 2450,
    amount = 1,
    separate = false,
    noship = false,
    allowed = {TEAM_CLONETROOPER, TEAM_CLONENCO, TEAM_CLONEOFFICER, TEAM_CLONEINSTRUCTOR, TEAM_501STTROOPER, TEAM_501STHEAVY, TEAM_501STMEDIC, TEAM_501STSHARPSHOOTER, TEAM_501STNCO, TEAM_501STOFFICER, TEAM_501STCOMMANDER, TEAM_187THTROOPER, TEAM_187THMEDIC, TEAM_187THSHARPSHOOTER, TEAM_187THHEAVY, TEAM_187THNCO, TEAM_187THOFFICER, TEAM_187THCOMMANDER, TEAM_91STTROOPER, TEAM_91STMEDIC, TEAM_91STARFTROOPER, TEAM_91STBARCTROOPER, TEAM_91STNCO, TEAM_91STOFFICER, TEAM_91STCOMMANDER, TEAM_5THFLEETTROOPER, TEAM_5THFLEETMEDIC, TEAM_5THFLEETHEAVY, TEAM_5THFLEETNCO, TEAM_5THFLEETOFFICER, TEAM_5THFLEETCOMMANDER, TEAM_HUNTER, TEAM_CROSSHAIR, TEAM_WRECKER, TEAM_TECH, TEAM_MARSHALCOMMANDER},
    category = "Equipment",
})
DarkRP.createShipment("Smoke Grenade", {
    model = "models/zeus/w_smokegrenade1.mdl",
    entity = "zeus_smokegranade",
    price = 2500,
    amount = 1,
    separate = false,
    noship = false,
    allowed = {TEAM_CLONETROOPER, TEAM_CLONENCO, TEAM_CLONEOFFICER, TEAM_CLONEINSTRUCTOR, TEAM_501STTROOPER, TEAM_501STHEAVY, TEAM_501STMEDIC, TEAM_501STSHARPSHOOTER, TEAM_501STNCO, TEAM_501STOFFICER, TEAM_501STCOMMANDER, TEAM_187THTROOPER, TEAM_187THMEDIC, TEAM_187THSHARPSHOOTER, TEAM_187THHEAVY, TEAM_187THNCO, TEAM_187THOFFICER, TEAM_187THCOMMANDER, TEAM_91STTROOPER, TEAM_91STMEDIC, TEAM_91STARFTROOPER, TEAM_91STBARCTROOPER, TEAM_91STNCO, TEAM_91STOFFICER, TEAM_91STCOMMANDER, TEAM_5THFLEETTROOPER, TEAM_5THFLEETMEDIC, TEAM_5THFLEETHEAVY, TEAM_5THFLEETNCO, TEAM_5THFLEETOFFICER, TEAM_5THFLEETCOMMANDER, TEAM_HUNTER, TEAM_CROSSHAIR, TEAM_WRECKER, TEAM_TECH, TEAM_MARSHALCOMMANDER},
    category = "Equipment",
})
DarkRP.createShipment("Flashbang", {
    model = "models/zeus/fbprimed.mdl",
    entity = "zeus_smokegranade",
    price = 2500,
    amount = 1,
    separate = false,
    noship = false,
    allowed = {TEAM_501STNCO, TEAM_187THNCO, TEAM_187THOFFICER, TEAM_187THCOMMANDER, TEAM_91STARFTROOPER, TEAM_91STBARCTROOPER, TEAM_5THFLEETTROOPER, TEAM_5THFLEETMEDIC, TEAM_5THFLEETHEAVY, TEAM_5THFLEETNCO, TEAM_5THFLEETOFFICER, TEAM_5THFLEETCOMMANDER, TEAM_HUNTER, TEAM_CROSSHAIR, TEAM_WRECKER, TEAM_TECH, TEAM_MARSHALCOMMANDER},
    category = "Equipment",
})
DarkRP.createShipment("Ammo Shipment", {
    model = "models/kingpommes/starwars/misc/imp_crate_single_closed.mdl",
    entity = "rw_ammo_distributor",
    price = 500,
    amount = 1,
    separate = false,
    noship = false,
    allowed = {TEAM_CLONETROOPER, TEAM_CLONENCO, TEAM_CLONEOFFICER, TEAM_CLONEINSTRUCTOR, TEAM_501STTROOPER, TEAM_501STHEAVY, TEAM_501STMEDIC, TEAM_501STSHARPSHOOTER, TEAM_501STNCO, TEAM_501STOFFICER, TEAM_501STCOMMANDER, TEAM_187THTROOPER, TEAM_187THMEDIC, TEAM_187THSHARPSHOOTER, TEAM_187THHEAVY, TEAM_187THNCO, TEAM_187THOFFICER, TEAM_187THCOMMANDER, TEAM_91STTROOPER, TEAM_91STMEDIC, TEAM_91STARFTROOPER, TEAM_91STBARCTROOPER, TEAM_91STNCO, TEAM_91STOFFICER, TEAM_91STCOMMANDER, TEAM_5THFLEETTROOPER, TEAM_5THFLEETMEDIC, TEAM_5THFLEETHEAVY, TEAM_5THFLEETNCO, TEAM_5THFLEETOFFICER, TEAM_5THFLEETCOMMANDER, TEAM_HUNTER, TEAM_CROSSHAIR, TEAM_WRECKER, TEAM_TECH, TEAM_MARSHALCOMMANDER},
    category = "Equipment",
})