--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_CADET = DarkRP.createJob("Cadet", {
	color = Color(237, 232, 232),
	model = {"models/smitty/bf2_reg/clone_recruit/clone_recruit.mdl"},
	description = [[Your a Clone Cadet.]],
	weapons = {"rw_sw_trd_dc15s", "rw_sw_trd_dc15a", "rw_sw_trd_dc17", "rw_sw_nade_training", "keys", "cross_arms_swep", "salute_swep"},
	command = "/cadet",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Troopers",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_CLONETROOPER = DarkRP.createJob("Clone Trooper", {
	color = Color(107, 132, 255),
	model = {"models/player/strasser/bf2/p2_ct/p2_ct_trooper.mdl", "models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
	description = [[Your a Clone Trooper.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/clonetrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Troopers",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_CLONETROOPERNCO = DarkRP.createJob("Clone Trooper NCO", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/sm_ct_sergeant/sm_ct_sergeant.mdl", "models/player/strasser/bf2/p2_ct/p2_ct_trooper.mdl"},
	description = [[Your a Clone trooper NCO.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/clonetroopernco",
	max = 0,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Troopers",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_CLONEOFFICER = DarkRP.createJob("Clone Officer", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/sm_ct_captain/sm_ct_captain.mdl", "models/player/strasser/bf2/p2_ct/p2_ct_trooper.mdl"},
	description = [[Your a Clone Officer.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", },
	command = "/cloneofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Troopers",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_CLONEOFFICER = DarkRP.createJob("Clone Instructor", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/clone_instructor/clone_instructor.mdl", "models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
	description = [[Your a Clone Instructor.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_sw_trd_dc15s", "rw_sw_trd_dc15a", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "rw_sw_stun_dc15s", "rw_sw_westarm5", "stunstick"},
	command = "/cloneinstructor",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Troopers",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
    end,
})
--[[ 501st]]--
TEAM_501STTROOPER = DarkRP.createJob("501st Trooper", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a 501st Trooper.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501sttrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_501STSHARPSHOOTER = DarkRP.createJob("501st Sharpshooter", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a 501st Sharpshooter.]],
	weapons = {"rw_sw_dc15le_o", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stsharpshooter",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_501STMEDIC = DarkRP.createJob("501st Medic", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501stkix/501stkix.mdl", "models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a 501st Medic.]],
	weapons = {"rw_sw_dc15a_o", "weapon_bactainjector", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stmedic",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_501STHEAVY = DarkRP.createJob("501st Heavy", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501stjesse/501stjesse.mdl", "models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a 501st Heavy Trooper.]],
	weapons = {"rw_sw_z6", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stheavy",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(225)
        ply:SetHealth(225)
    end,
})
TEAM_501STNCO = DarkRP.createJob("501st NCO", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501st_sergeant/501st_sergeant.mdl", "models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a 501st NCO.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stnco",
	max = 0,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_501STOFFICER = DarkRP.createJob("501st Officer", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a 501st Officer.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_501STCOMMANDER = DarkRP.createJob("501st Commander", {
	color = Color(107, 132, 255),
	model = {"models/starwars/grady/501st/captain_rex/captain_rex_ph2.mdl", "models/player/smitty/bf2_reg/501st_commander/501st_commander.mdl"},
	description = [[You the Commander of the 501st Legion.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/501stcommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "501st",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(150)
    end,
})
--[[187th]]--
TEAM_187THTROOPER = DarkRP.createJob("187th Trooper", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl"},
	description = [[Your a 187th Trooper.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thtrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_187THSHARPSHOOTER = DarkRP.createJob("187th Sharpshooter", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl"},
	description = [[Your a 187th Sharpshooter.]],
	weapons = {"rw_sw_dc15le_o", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thsharpshooter",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_187THMEDIC = DarkRP.createJob("187th Medic", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl"},
	description = [[Your a 187th Medic.]],
	weapons = {"rw_sw_dc15a_o", "weapon_bactainjector", "rw_sw_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thmedic",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_187THHEAVY = DarkRP.createJob("187th Heavy", {
	color = Color(107, 132, 255),
	model = {"models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl"},
	description = [[Your a 187th Heavy Trooper.]],
	weapons = {"rw_sw_z6", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thheavy",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(225)
        ply:SetHealth(225)
    end,
})
TEAM_187THNCO = DarkRP.createJob("187th NCO", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_sergeant/187th_sergeant.mdl", "models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl"},
	description = [[Your a 187th NCO.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thnco",
	max = 0,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_187THOFFICER = DarkRP.createJob("187th Officer", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_lieutenant/187th_lieutenant.mdl", "models/player/smitty/bf2_reg/187th_captain/187th_captain.mdl", "models/player/smitty/bf2_reg/187th_major/187th_major.mdl"},
	description = [[Your a 187th Officer.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_187THCOMMANDER = DarkRP.createJob("187th Commander", {
	color = Color(146, 0, 214),
	model = {"models/player/smitty/bf2_reg/187th_commander/187th_commander.mdl", "models/player/smitty/bf2_reg/187th_major/187th_major.mdl"},
	description = [[You the Commander of the 187th Legion.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/187thcommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "187th",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(150)
    end,
})
--[[91st]]--
TEAM_91STTROOPER = DarkRP.createJob("91st Recon Trooper", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/phase2_trooper/phase2_trooper.mdl", "models/strasser/bf2/91st/clone_91st_trooper.mdl"},
	description = [[Your a 91st Recon Trooper.]],
	weapons = {"rw_sw_dc15s", "rw_sw_dc17", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91strecontrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150) 
    end,
})
TEAM_91STMEDIC = DarkRP.createJob("91st Medic", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/phase2_trooper/phase2_trooper.mdl", "models/strasser/bf2/91st/clone_91st_trooper.mdl"},
	description = [[Your a 91st Medic.]],
	weapons = {"rw_sw_dc15s", "rw_sw_dc17", "rw_sw_bino_white", "weapon_bactainjector", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91stmedic",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_91STARFTROOPER = DarkRP.createJob("91st ARF Trooper", {
	color = Color(171, 2, 69),
	model = { "models/tkaro/91st/arf/arf.mdl", "models/tkaro/91st/phase2_trooper/phase2_trooper.mdl", "models/strasser/bf2/91st/clone_91st_trooper.mdl"},
	description = [[Your a 91st ARF Trooper.]],
	weapons = {"rw_sw_dc15x", "rw_sw_dc17", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91starftrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150) 
    end,
})
TEAM_91STBARCTROOPER = DarkRP.createJob("91st BARC Trooper", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/trooper/barc_trooper.mdl", "models/strasser/bf2/91st/clone_91st_barc_trooper.mdl"},
	description = [[Your a 91st BARC Trooper.]],
	weapons = {"rw_sw_dc15s", "rw_sw_dc17", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91stbarctrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_91STNCO = DarkRP.createJob("91st Recon NCO", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/phase2_trooper/phase2_trooper.mdl", "models/strasser/bf2/91st/clone_91st_trooper.mdl"},
	description = [[Your a 91st Recon NCO.]],
	weapons = {"rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91streconnco",
	max = 0,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_91STOFFICER = DarkRP.createJob("91st Recon Officer", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/phase2_trooper/phase2_trooper.mdl", "models/strasser/bf2/91st/clone_91st_trooper.mdl"},
	description = [[Your a 91st Recon Officer.]],
	weapons = {"rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91streconofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_91STCOMMANDER = DarkRP.createJob("91st Recon Commander", {
	color = Color(171, 2, 69),
	model = {"models/tkaro/91st/neyo/neyo.mdl"},
	description = [[You the Commander of the 91st Reconaissance Corps.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/91streconcommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "91st Reconnaissance Corps",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(150)
    end,
})
--[[5th fleet security]]--
TEAM_5THFLEETTROOPER = DarkRP.createJob("5th Fleet Security Trooper", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl"},
	description = [[Your a 5th Fleet Security Trooper.]],
	weapons = {"rw_sw_dc15s", "rw_sw_dc17", "rw_sw_stun_dc15s", "weapon_cuff_elastic", "stunstick", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecuritytrooper",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_5THFLEETMEDIC = DarkRP.createJob("5th Fleet Security Medic", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl"},
	description = [[Your a 5th Fleet Security Medic.]],
	weapons = {"weapon_bactainjector", "rw_sw_dc15s", "rw_sw_dc17", "weapon_cuff_elastic", "stunstick", "rw_sw_stun_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecuritymedic",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_5THFLEETHEAVY = DarkRP.createJob("5th Fleet Security Heavy", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl"},
	description = [[Your a 5th Fleet Security Heavy.]],
	weapons = {"rw_sw_dp23", "rw_sw_dc17", "rw_sw_stun_dc15s", "keys", "weapon_cuff_elastic", "stunstick", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecurityheavy",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(225)
        ply:SetHealth(225)
    end,
})
TEAM_5THFLEETNCO = DarkRP.createJob("5th Fleet Security NCO", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_sergeant/5th_sergeant.mdl"},
	description = [[Your a 5th Fleet Security NCO.]],
	weapons = {"rw_sw_dc15s", "rw_sw_dc17", "rw_sw_nade_stun", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_stun_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecuritynco",
	max = 0,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(170)
        ply:SetHealth(170)
    end,
})
TEAM_5THFLEETOFFICER = DarkRP.createJob("5th Fleet Security Officer", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_lieutenant/5th_lieutenant.mdl", "models/player/smitty/bf2_reg/5th_captain/5th_captain.mdl", "models/player/smitty/bf2_reg/5th_major/5th_major.mdl"},
	description = [[Your a 5th Fleet Security Officer.]],
	weapons = {"rw_sw_dc15s", "rw_sw_nade_stun", "rw_sw_dc17", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_stun_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecurityofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_5THFLEETCOMMANDER = DarkRP.createJob("5th Fleet Security Commander", {
	color = Color(3, 7, 128),
	model = {"models/player/smitty/bf2_reg/5th_commander/5th_commander.mdl", "models/player/smitty/bf2_reg/5th_major/5th_major.mdl"},
	description = [[You the Commander of 5th Fleet Security.]],
	weapons = {"rw_sw_dc15s", "rw_sw_stun_dc17", "rw_sw_nade_stun", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/5thfleetsecuritycommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "5th Fleet Security",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(150)
    end,
})
--[[Bad Batch]]--
TEAM_HUNTER = DarkRP.createJob("Hunter", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/hunter.mdl"},
	description = [[You are the Leader of the Bad Batch.]],
	weapons = {"rw_sw_dual_dc17s", "at_sw_dc17m_original", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_nade_thermal", "weapon_cuff_elastic", "stunstick", "rw_sw_dc17", "rw_sw_dc17c", "keys", "point_in_direction_swep", "rw_sw_bino_white", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/hunter",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Force 99",
	modelScale = 1.1,
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(450)
        ply:SetHealth(450)
		ply:SetArmor(250)
    end,
})
TEAM_CROSSHAIR = DarkRP.createJob("Crosshair", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/crosshair.mdl"},
	description = [[Your the Sniper in the Bad Batch.]],
	weapons = {"rw_sw_dlt19x", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_dual_dc17s", "rw_sw_nade_thermal", "rw_sw_bino_white", "rw_sw_dc17", "keys", "weapon_cuff_elastic", "stunstick", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/crosshair",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Force 99",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(400)
        ply:SetHealth(400)
		ply:SetArmor(250)
    end,
})
TEAM_WRECKER = DarkRP.createJob("Wrecker", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/wrecker.mdl"},
	description = [[Your the Heavy in the Bad Batch.]],
	weapons = {"at_sw_dc17m_original", "rw_sw_z6", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_nade_thermal", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/wrecker",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Force 99",
	modelScale = 1.2,
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(650)
        ply:SetHealth(650)
		ply:SetArmor(250)
    end,
})
TEAM_TECH = DarkRP.createJob("Tech", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/tech.mdl"},
	description = [[You the Tech Expert in the Bad Batch.]],
	weapons = {"rw_sw_dual_dc17s", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "alydus_fusioncutter", "alydus_fortificationbuildertablet", "rw_sw_bino_white", "rw_ammo_distributor","weapon_cuff_elastic", "stunstick", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dc17c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/tech",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Clone Force 99",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(400)
        ply:SetHealth(400)
		ply:SetArmor(250)
    end,
})
--[[operations]]--
TEAM_CREWMAN = DarkRP.createJob("Crewman", {
	color = Color(115, 115, 115),
	model = {"models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your a Crewman in the Grand Republic Navy.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/crewman",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Personnel",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_NAVALOFFICER = DarkRP.createJob("Naval Officer", {
	color = Color(115, 115, 115),
	model = {"models/smitty/bf2_reg/olive_officer/olive_officer.mdl", "models/smitty/bf2_reg/grey_officer/grey_officer.mdl", "models/smitty/bf2_reg/blue_officer/blue_officer.mdl", "models/smitty/bf2_reg/brown_officer/brown_officer.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your a Naval Officer.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/navalofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Personnel",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_DIRECTOROFOPERATIONS = DarkRP.createJob("Director of Operations", {
	color = Color(115, 115, 115),
	model = {"models/smitty/bf2_reg/olive_officer/olive_officer.mdl", "models/smitty/bf2_reg/grey_officer/grey_officer.mdl", "models/smitty/bf2_reg/blue_officer/blue_officer.mdl", "models/smitty/bf2_reg/brown_officer/brown_officer.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[You the Director of the Naval Operations Division.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/directorofoperations",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Personnel",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
--[[Vixen Squadron]]--
TEAM_VIXENSQUADRONPILOT = DarkRP.createJob("Vixen Squadron Pilot", {
	color = Color(255, 223, 46),
	model = {"models/ranz/pilots/regpilots/miscpilot.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your a Pilot in Vixen Squadron.]],
	weapons = {"rw_sw_dc17ext", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/vixensquadronpilot",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Vixen Squadron",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_VIXENSQUADRONCOMMANDER = DarkRP.createJob("Vixen Squadron Commander", {
	color = Color(255, 223, 46),
	model = {"models/ranz/pilots/regpilots/miscpilot.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your the Commander of Vixen Squadron.]],
	weapons = {"rw_sw_dc17ext", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/vixensquadroncommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Vixen Squadron",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
--[[high command]]--
TEAM_CAPTAINOFTHESHIP = DarkRP.createJob("Captain of the Ship", {
	color = Color(184, 50, 50),
	model = {"models/gonzo/republicnavyadmiral/republicnavyadmiral.mdl", "models/smitty/bf2_reg/wolffe_officer/wolffe_officer.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl", "models/smitty/bf2_reg/grey_officer/grey_officer.mdl", "models/smitty/bf2_reg/blue_officer/blue_officer.mdl", "models/smitty/bf2_reg/brown_officer/brown_officer.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your the Captain of the Ship, Head of all Naval Staff.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "weapon_cuff_elastic", "stunstick", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/captainoftheship",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "High Command",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
    end,
})
TEAM_MARSHALCOMMANDER = DarkRP.createJob("Marshal Commander", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/player/smitty/bf2_reg/arccmd/arccmd.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl", "models/smitty/bf2_reg/grey_officer/grey_officer.mdl", "models/smitty/bf2_reg/blue_officer/blue_officer.mdl", "models/smitty/bf2_reg/brown_officer/brown_officer.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[You the Marshal Commander, Head of all Army staff.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_stun_dc17", "rw_sw_nade_stun", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "weapon_cuff_elastic", "stunstick", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/marshalcommander",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "High Command",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(250)
    end,
})
--[[Staff]]--
TEAM_STAFF = DarkRP.createJob("Staff on Duty", {
	color = Color(251, 255, 0),
	model = {"models/player/police.mdl"},
	description = [[Your a staff member.]],
	weapons = {"weapon_physgun", "gmod_tool", "gmod_camera", "rw_sw_stun_dc15s", "door_ram", "arrest_stick", "unarrest_stick", "stunstick", "keys", "weapon_cuff_elastic"},
	command = "/staffonduty",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Staff",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
		ply:SetArmor(250)
    end,
})
TEAM_GAMEMASTER = DarkRP.createJob("Game Master on Duty", {
	color = Color(251, 255, 0),
	model = {"models/player/combine_soldier.mdl"},
	description = [[Your a Game Master.]],
	weapons = {"weapon_physgun", "gmod_tool", "gmod_camera", "rw_sw_stun_dc15s", "door_ram", "arrest_stick", "unarrest_stick", "stunstick", "keys", "weapon_cuff_elastic"},
	command = "/gamemasteronduty",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Staff",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
		ply:SetArmor(250)
    end,
})
--[[event jobs]]--
TEAM_B1BATTLEDROID = DarkRP.createJob("B1 Battle Droid", {
	color = Color(255, 0, 0),
	model = {"models/player/b1battledroids/b1_base.mdl", "models/player/b1battledroids/b1_geo.mdl", "models/player/b1battledroids/b1_base_security.mdl", "models/player/b1battledroids/b1_base_pilot.mdl", "models/player/b1battledroids/b1_base_aatdriver.mdl", "models/player/b1battledroids/b1_base_marine.mdl", "models/player/b1battledroids/b1_base_snowcamo.mdl"},
	description = [[Your a B1 Battle Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/b1battledroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_B1BTRAININGDROID = DarkRP.createJob("B1 Training Droid", {
	color = Color(255, 0, 0),
	model = {"models/player/b1battledroids/b1_base_training.mdl"},
	description = [[Your a Training B1 Battle Droid, designed to test clones in simulated battles.]],
	weapons = {"rw_sw_e5", "rw_sw_se14c"},
	command = "/b1trainingdroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
    end,
})
TEAM_B1ROCKETBATTLEDROID = DarkRP.createJob("B1 Rocket Battle Droid", {
	color = Color(255, 0, 0),
	model = {"models/player/b1battledroids/b1_rocket.mdl"},
	description = [[Your a B1 Rocket Battle Droid, buy a jetpack in the Entities Tab.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "rw_sw_se14c", "rw_sw_hh15", "keys", "weapon_cuff_elastic", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/b1rocketbattledroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(300)
        ply:SetHealth(300)
    end,
})
TEAM_B2SUPERBATTLEDROID = DarkRP.createJob("B2 Super Battle Droid", {
	color = Color(255, 0, 0),
	model = {"models/player/hydro/b2_battledroid/b2_battledroid.mdl"},
	description = [[You are a B2 Super Battle Droid.]],
	weapons = {"rw_sw_b2rp_blaster", "rw_sw_b2rp_rocket", "weapon_cuff_elastic", "keys", "point_in_direction_swep", "high_five_swep", "salute_swep"},
	command = "/b2superbattledroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	modelScale = 1.2,
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(800)
        ply:SetHealth(800)
    end,
})
TEAM_B1COMMANDERDROID = DarkRP.createJob("B1 Commander Droid", {
	color = Color(255, 0, 0),
	model = {"models/player/b1battledroids/b1_base_com.mdl", "models/player/b1battledroids/b1_geo_com.mdl", "models/player/b1battledroids/b1_base_darkcamo.mdl"},
	description = [[Your a B1 Commander Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/b1commanderdroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_BXCOMMANDODROID = DarkRP.createJob("BX Commando Droid", {
	color = Color(64, 33, 33),
	model = {"models/sally/tkaro/bx_commando_droid.mdl", "models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl", "models/player/smitty/bf2_reg/187th_trooper/187th_trooper.mdl", "models/player/smitty/bf2_reg/5th_trooper/5th_trooper.mdl", "models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl", "models/tkaro/91st/phase2_trooper/phase2_trooper.mdl"},
	description = [[Your a BX Commando Droid, dont use clone models unless youve killed a clone of that unit, and get permission from the game master.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5bx", "cloaking-2", "rw_sw_z4", "rw_sw_bx_sword", "rw_sw_e5s_auto", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/bxcommandodroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(350)
        ply:SetHealth(350)
		ply:SetArmor(250)
    end,
})
TEAM_MAGNAGUARD = DarkRP.createJob("Magna Guard", {
	color = Color(255, 0, 0),
	model = {"models/tfa/comm/gg/pm_sw_magna_guard_combined.mdl", "models/tfa/comm/gg/pm_sw_magna_guard_season4.mdl", "models/tfa/comm/gg/pm_sw_magna_guard_trainer.mdl"},
	description = [[Your a IG-100 Magna Guard, one of the most advanced droid models in the droid army.]],
	weapons = {"meleearts_staff_shock", "alydus_fortificationbuildertablet", "lockpick", "rw_sw_wristflame", "rw_sw_bino_dark", "rw_sw_e60r", "rw_sw_nade_dioxis", "rw_sw_z4", "rw_sw_e5bx", "weapon_cuff_elastic", "cloaking-3", "rw_sw_bx_sword", "keys", "weapon_cuff_elastic", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/magnaguard",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1400)
        ply:SetHealth(1400)
    end,
})
TEAM_TACTICALDROID = DarkRP.createJob("Tactical Droid", {
	color = Color(255, 0, 0),
	model = {"models/tfa/comm/gg/pm_sw_droid_tactical.mdl", "models/tactical_purple/pm_droid_tactical_purple.mdl", "models/tactical_gold/pm_droid_tactical_gold.mdl", "models/tactical_blue/pm_droid_tactical_blue.mdl", "models/tactical_red/pm_droid_tactical_red.mdl", "models/tactical_black/pm_droid_tactical_black.mdl"},
	description = [[Your a Tactical Droid, study the battlefield and destroy your enemies.]],
	weapons = {"rw_sw_bino_desert", "weapon_cuff_elastic", "zeus_smokegranade", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/tacticaldroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_SUPERTACTICALDROID = DarkRP.createJob("Super Tactical Droid", {
	color = Color(255, 0, 0),
	model = {"models/super_tactical_kalani/pm_droid_tactical_kalani.mdl", "models/super_tactical_stuxnet/pm_droid_tactical_stuxnet.mdl"},
	description = [[Your a Super Tactical Droid, analyse the battlefield and calculate unbeatable strategy for the CIS.]],
	weapons = {"rw_sw_bino_desert", "weapon_cuff_elastic", "zeus_smokegranade", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/supertacticaldroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
    end,
})
TEAM_CISSCIENTIST = DarkRP.createJob("CIS Scientist", {
	color = Color(255, 0, 0),
	model = {"models/3/pm_scientist_pantoran.mdl", "models/4/pm_scientist_corona.mdl", "models/2/pm_scientist_human2.mdl", "models/1/pm_scientist_human1.mdl"},
	description = [[You are a CIS Scientist.]],
	weapons = {"alydus_fortificationbuildertablet", "alydus_fusioncutter", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/cisscientist",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_GENERALSSTRAZAV = DarkRP.createJob("General Sstrazav", {
	color = Color(255, 0, 0),
	model = {"models/lizards/lizardmanvd.mdl"},
	description = [[You are General Sstrazav, a feared and ruthless Seperatist General, known for having a habit of killing civilians and prisoners of war.]],
	weapons = {"rw_sw_bino_desert", "meleearts_axe_battleaxe", "rw_sw_bx_sword", "weapon_bactainjector", "weapon_fists", "rw_sw_ib94", "weapon_cuff_elastic", "zeus_smokegranade", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/generalsstrazav",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
    end,
})
TEAM_ADMIRALHETTER = DarkRP.createJob("Admiral Hetter", {
	color = Color(255, 0, 0),
	model = {"models/hcn/starwars/bf/rodian/rodian_5.mdl"},
	description = [[You are Admiral Hetter, a cold and calculating Seperatist Admiral.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_se14", "weapon_bactainjector", "rw_sw_stun_dc17", "weapon_cuff_elastic", "zeus_smokegranade", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/admiralhetter",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
    end,
})
TEAM_GENERALGRIEVOUS = DarkRP.createJob("General Grievous", {
	color = Color(255, 0, 0),
	model = {"models/aussisengels/grievous/general_grievous.mdl"},
	description = [[You are General Grievous, Leader of the Droid Army.]],
	weapons = {"rw_sw_bino_desert", "zeus_thermaldet", "weapon_fists", "meleearts_staff_shock", "cloaking-1", "rw_sw_bx_sword", "weapon_lightsaber", "zeus_thermaldet", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/generalgrievous",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(5000)
        ply:SetHealth(5000)
		ply:SetArmor(250)
    end,
})
TEAM_COUNTDOOKU = DarkRP.createJob("Count Dooku", {
	color = Color(184, 50, 50),
	model = {"models/sirris_sw/Dooku_PM.mdl"},
	description = [[You are Count Dooku, Darth Lord Tyranus, Leader of the CIS.]],
	weapons = { "weapon_lightsaber", "weapon_cuff_elastic", "weapon_forceheal", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/countdooku",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(5000)
        ply:SetHealth(5000)
		ply:SetArmor(250)
    end,
})
TEAM_PROTOCOLDROID = DarkRP.createJob("Protocol Droid", {
	color = Color(240, 222, 65),
	model = {"models/starwars/grady/protocol_droids/protocol-black.mdl", "models/starwars/grady/protocol_droids/protocol-blue.mdl", "models/starwars/grady/protocol_droids/protocol-cyan.mdl", "models/starwars/grady/protocol_droids/protocol-green.mdl", "models/starwars/grady/protocol_droids/protocol-killer.mdl", "models/starwars/grady/protocol_droids/protocol-recycling.mdl", "models/starwars/grady/protocol_droids/protocol-red.mdl", "models/starwars/grady/protocol_droids/protocol-rust.mdl", "models/starwars/grady/protocol_droids/protocol-stripper.mdl", "models/starwars/grady/protocol_droids/protocol-white.mdl"},
	description = [[Your a Protocol Droid.]],
	weapons = {"keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/protocoldroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(80)
        ply:SetHealth(80)
    end,
})
TEAM_INTELLIGENCEOFFICER = DarkRP.createJob("Intelligence Officer", {
	color = Color(240, 222, 65),
	model = {"models/smitty/bf2_reg/olive_officer/olive_officer.mdl", "models/smitty/bf2_reg/grey_officer/grey_officer.mdl", "models/smitty/bf2_reg/blue_officer/blue_officer.mdl", "models/smitty/bf2_reg/brown_officer/brown_officer.mdl", "models/smitty/bf2_reg/black_officer/black_officer.mdl"},
	description = [[Your a Republic Intelligence Officer.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "weapon_cuff_elastic", "rw_sw_stun_dc17", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/intelligenceofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_GORILLAFIGHTER = DarkRP.createJob("Gorilla Fighter", {
	color = Color(0, 196, 13),
	model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl", "models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish.mdl", "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl", "models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl", "models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl",
	"models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/sullustan/sullustan.mdl", "models/hcn/starwars/bf/sullustan/sullustan_2.mdl", "models/hcn/starwars/bf/sullustan/sullustan_3.mdl", "models/hcn/starwars/bf/sullustan/sullustan_4.mdl", "models/hcn/starwars/bf/zabrak/zabrak.mdl", "models/hcn/starwars/bf/zabrak/zabrak_2.mdl", "models/hcn/starwars/bf/zabrak/zabrak_3.mdl", "models/hcn/starwars/bf/zabrak/zabrak_4.mdl"},
	description = [[Your a Gorilla Freedom Fighter, pushing back against the oppression and control of your home planet.]],
	weapons = {"rw_sw_ib94", "rw_sw_a280c", "weapon_cuff_elastic", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/gorillafighter",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
    end,
})
TEAM_GORILLALEADER = DarkRP.createJob("Gorilla Leader", {
	color = Color(0, 196, 13),
	model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl", "models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish.mdl", "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl", "models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl", "models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl",
	"models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/sullustan/sullustan.mdl", "models/hcn/starwars/bf/sullustan/sullustan_2.mdl", "models/hcn/starwars/bf/sullustan/sullustan_3.mdl", "models/hcn/starwars/bf/sullustan/sullustan_4.mdl", "models/hcn/starwars/bf/zabrak/zabrak.mdl", "models/hcn/starwars/bf/zabrak/zabrak_2.mdl", "models/hcn/starwars/bf/zabrak/zabrak_3.mdl", "models/hcn/starwars/bf/zabrak/zabrak_4.mdl"},
	description = [[You are leader of the resistance against the oppression and control of your home planet.]],
	weapons = {"rw_sw_s5c", "weapon_cuff_elastic", "rw_sw_scattershotgun", "rw_sw_cr2c", "alydus_fortificationbuildertablet", "rw_sw_a280c", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/gorillaleader",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(400)
        ply:SetHealth(400)
    end,
})
TEAM_REPUBLICSCIENTIST = DarkRP.createJob("Republic Scientist", {
	color = Color(0, 53, 245),
	model = {"models/2/pm_scientist_human2.mdl", "models/1/pm_scientist_human1.mdl", "models/3/pm_scientist_pantoran.mdl", "models/4/pm_scientist_corona.mdl"},
	description = [[You are a Republic Scientist.]],
	weapons = {"rw_sw_bino_desert", "alydus_fusioncutter", "alydus_fortificationbuildertablet", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/republicscientist",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_JANGOFETT = DarkRP.createJob("Jango Fett", {
	color = Color(0, 196, 13),
	model = {"models/player/aussiwozzi/mandalorians/jango_fett.mdl"},
	description = [[You are the legendary bounter hunter, Jango Fett. Buy a jetpack in the Entities Tab]],
	weapons = {"rw_sw_dual_westar34", "weapon_cuff_elastic", "rw_sw_wristblaster_light_red", "rw_sw_wristrocket", "rw_sw_wristnade", "rw_sw_wristflame", "rw_sw_nt242c", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "rw_sw_westar11", "lockpick", "alydus_fusioncutter", "alydus_fortificationbuildertablet", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/jangofett",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(2000)
        ply:SetHealth(2000)
		ply:SetArmor(250)
    end,
})
TEAM_BOBAFETT = DarkRP.createJob("Boba Fett", {
	color = Color(115, 115, 115),
	model = {"models/player/valley/BobaFettYoungSuit.mdl"},
	description = [[You are Boba Fett, son of the Legendary Bounty Hunter Jango Fett. Will yoiu live up to his reputation?]],
	weapons = {"rw_sw_dual_westar34", "rw_sw_nade_dioxis", "alydus_fortificationbuildertablet", "lockpick", "weapon_cuff_elastic", "rw_sw_westar34", "rw_sw_nt242c", "rw_sw_relbyk23", "rw_sw_pinglauncher" , "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "t3m4_empgrenade", "rw_sw_smartlauncher", "rw_sw_nade_incendiary", "rw_sw_nade_impact", "weapon_bactainjector", "cloaking-1", "rw_sw_bx_sword", "rw_sw_wristflame", "rw_sw_dc15s", "rw_sw_stun_dc17", "rw_sw_tusken_cycler", "rw_sw_scattershotgun", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/bobafett",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(2500)
        ply:SetHealth(2500)
		ply:SetArmor(250)
    end,
})
TEAM_MANDALORIAN = DarkRP.createJob("Mandalorian", {
	color = Color(0, 196, 13),
	model = {"models/player/aussiwozzi/mandalorians/kal_skirata.mdl", "models/player/aussiwozzi/mandalorians/walon_vau.mdl", "models/gonzo/goldmandalorianprestige/goldmandalorianprestige.mdl", "models/smitty/swbf/jacen/hero_gunslinger_jacen.mdl", "models/smitty/swbf/saider/hero_gunslinger_saider.mdl"},
	description = [[Your a Mandalorian, buy a jetpack in the Entities Tab.]],
	weapons = { "rw_sw_wristblaster_light_red", "rw_sw_westar11", "rw_sw_wristrocket", "rw_sw_cr2", "rw_sw_pinglauncher", "rw_sw_wristblaster_heavy_yellow", "rw_sw_wristnade", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "rw_sw_wristflame", "rw_sw_ee3", "lockpick", "weapon_cuff_elastic", "rw_sw_westar35", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/mandalorian",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
		ply:SetArmor(250)
    end,
})
TEAM_DEATHWATCHWARRIOR = DarkRP.createJob("Death Watch Warrior", {
	color = Color(0, 196, 13),
	model = {"models/grealms/characters/deathwatch/deathwatch_infantry.mdl"},
	description = [[Your a Death Watch Warrior, protector of the Mandalorian tradition and pride, buy a jetpack in the Entities Tab.]],
	weapons = {"rw_sw_wristblaster_light_yellow", "rw_sw_westar11", "rw_sw_hh12", "rw_sw_wristrocket", "rw_sw_wristnade", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "rw_sw_wristflame", "lockpick", "weapon_cuff_elastic", "rw_sw_westar35", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/deathwatchwarrior",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1000)
        ply:SetHealth(1000)
		ply:SetArmor(250)
    end,
})
TEAM_DEATHWATCHELITE = DarkRP.createJob("Death Watch Elite", {
	color = Color(0, 196, 13),
	model = {"models/grealms/characters/deathwatch/deathwatch_infantry.mdl", "models/smitty/swbf/jacen/hero_gunslinger_jacen.mdl", "models/smitty/swbf/saider/hero_gunslinger_saider.mdl"},
	description = [[Your a Death Watch Elite, Special among the ranks of DeathWatch as truely distinguished warriors! buy a jetpack in the Entities Tab.]],
	weapons = {"rw_sw_westar11", "rw_sw_hh12", "rw_sw_wristrocket", "rw_sw_wristblaster_heavy_yellow", "rw_sw_bx_sword", "meleearts_staff_shock", "rw_sw_iqa11c", "cloaking-2", "rw_sw_z2", "alydus_fortificationbuildertablet", "rw_sw_wristnade", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "rw_sw_wristflame", "lockpick", "weapon_cuff_elastic", "rw_sw_westar35", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/deathwatchelite",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(1400)
        ply:SetHealth(1400)
		ply:SetArmor(250)
    end,
})
TEAM_PREVIZLA = DarkRP.createJob("Pre Vizla", {
	color = Color(0, 196, 13),
	model = {"models/grealms/characters/deathwatch/deathwatch_previszla.mdl"},
	description = [[Your Pre Vizla, leader of the Death Watch! buy a jetpack in the Entities Tab.]],
	weapons = {"rw_sw_westar11", "rw_sw_hh12", "rw_sw_wristrocket", "rw_sw_wristblaster_heavy_yellow", "rw_sw_dual_westar35", "weapon_lightsaber", "alydus_fortificationbuildertablet", "rw_sw_wristnade", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "rw_sw_wristflame", "lockpick", "weapon_cuff_elastic", "rw_sw_westar35", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/previzla",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(2300)
        ply:SetHealth(2300)
		ply:SetArmor(250)
    end,
})
TEAM_TRANDOSHIAN = DarkRP.createJob("Trandoshian", {
	color = Color(240, 128, 0),
	model = {"models/hcn/starwars/bf/bossk/bossk.mdl", "models/hcn/starwars/bf/bossk/bossk_black.mdl", "models/hcn/starwars/bf/bossk/bossk_red.md", "models/hcn/starwars/bf/bossk/bossk_green.mdl", "models/hcn/starwars/bf/bossk/bossk_blue.mdl"},
	description = [[Your a Trandoshian.]],
	weapons = {"rw_sw_cj9", "rw_sw_dt12", "weapon_cuff_elastic", "rw_sw_huntershotgun", "rw_sw_bx_sword", "stunstick", "rw_sw_relbyv10", "rw_sw_ee3", "rw_sw_tusken_cycler", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/trandoshian",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	modelScale = 1.2,
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
		ply:SetArmor(250)
    end,
})
TEAM_CADBANE = DarkRP.createJob("Cad Bane", {
	color = Color(115, 115, 115),
	model = {"models/grealms/characters/cadbane/cadbane.mdl"},
	description = [[You are Cad Bane, Legendary and Ruthless bounty hunter.]],
	weapons = {"rw_sw_nade_dioxis", "rw_sw_ll30", "rw_sw_dual_ll30", "rw_sw_westar11", "alydus_fortificationbuildertablet", "lockpick", "weapon_cuff_elastic", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "t3m4_empgrenade", "rw_sw_smartlauncher", "rw_sw_nade_incendiary", "rw_sw_nade_impact", "weapon_bactainjector", "rw_sw_bx_sword", "rw_sw_tusken_cycler", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/cadbane",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(2000)
        ply:SetHealth(2000)
		ply:SetArmor(250)
    end,
})
TEAM_BOSSK = DarkRP.createJob("Bossk", {
	color = Color(115, 115, 115),
	model = {"models/hcn/starwars/bf/bossk/bossk.mdl"},
	description = [[You are Bossk, the galaxies most feared Trandoshian.]],
	weapons = {"rw_sw_nade_dioxis", "rw_sw_iqa11c", "rw_sw_dt12", "rw_sw_relbyv10", "lockpick", "weapon_cuff_elastic", "zeus_thermaldet", "zeus_smokegranade", "zeus_flashbang", "t3m4_empgrenade", "rw_sw_smartlauncher", "rw_sw_nade_incendiary", "rw_sw_nade_impact", "rw_sw_bx_sword", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/bossk",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(2000)
        ply:SetHealth(2000)
		ply:SetArmor(0)
    end,
})
TEAM_PIRATE = DarkRP.createJob("Pirate", {
	color = Color(240, 128, 0),
	model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/bossk/bossk.mdl", "models/hcn/starwars/bf/bossk/bossk_black.mdl", "models/hcn/starwars/bf/bossk/bossk_red.md", "models/hcn/starwars/bf/bossk/bossk_green.mdl", "models/hcn/starwars/bf/bossk/bossk_blue.mdl", "models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl", "models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish.mdl", "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl", "models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl", "models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl",
	"models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/sullustan/sullustan.mdl", "models/hcn/starwars/bf/sullustan/sullustan_2.mdl", "models/hcn/starwars/bf/sullustan/sullustan_3.mdl", "models/hcn/starwars/bf/sullustan/sullustan_4.mdl", "models/hcn/starwars/bf/zabrak/zabrak.mdl", "models/hcn/starwars/bf/zabrak/zabrak_2.mdl", "models/hcn/starwars/bf/zabrak/zabrak_3.mdl", "models/hcn/starwars/bf/zabrak/zabrak_4.mdl"},
	description = [[Your a Pirate.]],
	weapons = {"rw_sw_cj9", "rw_sw_dt12", "weapon_cuff_elastic", "rw_sw_huntershotgun", "rw_sw_bx_sword", "stunstick", "rw_sw_relbyv10", "rw_sw_ee3", "rw_sw_tusken_cycler", "rw_sw_ib94", "rw_sw_a280c", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/pirate",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
		ply:SetArmor(250)
    end,
})
TEAM_CIVILIAN = DarkRP.createJob("Civilian", {
	color = Color(240, 222, 65),
	model = {"models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl", "models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/abednedo/abednedo_5.mdl", "models/hcn/starwars/bf/aqualish/aqualish.mdl",  "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl", "models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish_5.mdl", "models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/human/human_male_5.mdl", 
	"models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl", "models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib_5.mdl", "models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl", "models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/quarren/quarren_5.mdl", "models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl", "models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/rodian/rodian_5.mdl", "models/hcn/starwars/bf/sullustan/sullustan.mdl", 
	"models/hcn/starwars/bf/sullustan/sullustan_2.mdl", "models/hcn/starwars/bf/sullustan/sullustan_3.mdl", "models/hcn/starwars/bf/sullustan/sullustan_4.mdl",  "models/hcn/starwars/bf/sullustan/sullustan_5.mdl", "models/hcn/starwars/bf/zabrak/zabrak.mdl", "models/hcn/starwars/bf/zabrak/zabrak_2.mdl", "models/hcn/starwars/bf/zabrak/zabrak_3.mdl", "models/hcn/starwars/bf/zabrak/zabrak_4.mdl", "models/hcn/starwars/bf/zabrak/zabrak_5.mdl"},
	description = [[Your a Civilian.]],
	weapons = {"keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/humancivilian",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
    end,
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CADET
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)