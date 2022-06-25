--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]
DarkRP.createEntity("Jetpack", {
    ent = "starwars_jetpack",
    model = "models/clone_jetpack.mdl",
    price = 1000,
    max = 1,
    cmd = "/buyjetpack",
    allowed = {TEAM_B1ROCKETBATTLEDROID, TEAM_MANDALORIAN, TEAM_JANGOFETT},
    category = "Equipment",
})

DarkRP.createEntity("BARC Speeder", {
    ent = "heracles421_lfs_barc",
    model = "models/heracles421/galactica_vehicles/barc.mdl",
    price = 1000,
    max = 1,
    cmd = "/buybarcspeeder",
	allowed = {TEAM_91STBARCTROOPER, TEAM_91STOFFICER, TEAM_91STCOMMANDER},
    category = "Equipment",
})