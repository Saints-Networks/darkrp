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
	model = {"models/player/strasser/bf2/p2_ct/p2_ct_trooper.mdl", "models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
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
	model = {"models/player/strasser/bf2/p2_ct/p2_ct_trooper.mdl", "models/player/smitty/bf2_reg/sm_ct_trooper/sm_ct_trooper.mdl"},
	description = [[Your a Clone Officer.]],
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	model = {"models/tkaro/91st/trooper/barc_trooper.mdl", " models/strasser/bf2/91st/clone_91st_barc_trooper.mdl"},
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
	model = {"models/tkaro/91st/trigg/trigg.mdl", "models/tkaro/91st/neyo/neyo.mdl"},
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
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_dc17", "rw_sw_stun_dc15s", "weapon_cuff_elastic", "stunstick", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dc15a_o", "weapon_bactainjector", "rw_sw_dc15s", "rw_sw_dc17", "weapon_cuff_elastic", "stunstick", "rw_sw_stun_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dp23", "rw_sw_z6", "rw_sw_dc17", "rw_sw_stun_dc15s", "keys", "weapon_cuff_elastic", "stunstick", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_dc17", "rw_sw_nade_stun", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_stun_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_nade_stun", "rw_sw_dc17", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_stun_dc17", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dc15a_o", "rw_sw_dc15s", "rw_sw_stun_dc17", "rw_sw_nade_stun", "weapon_cuff_elastic", "stunstick", "rw_sw_bino_white", "rw_ammo_distributor", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dual_dc17s", "rw_sw_dual_dc15s", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	weapons = {"rw_sw_dual_dc17s", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_dc17m", "rw_sw_dc17m_shotgun", "rw_sw_dc17m_sniper", "rw_sw_nade_thermal", "weapon_cuff_elastic", "stunstick", "rw_sw_dc17m_launcher", "rw_sw_dc17", "rw_sw_dc17c", "keys", "point_in_direction_swep", "rw_sw_bino_white", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/hunter",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Bad Batch",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(250)
    end,
})
TEAM_CROSSHAIR = DarkRP.createJob("Crosshair", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/crosshair.mdl"},
	description = [[You the Sniper in the Bad Batch.]],
	weapons = {"rw_sw_dlt19x", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_dual_dc17s", "rw_sw_nade_thermal", "rw_sw_bino_white", "rw_sw_dc17", "keys", "weapon_cuff_elastic", "stunstick", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/crosshair",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Bad Batch",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(250)
    end,
})
TEAM_WRECKER = DarkRP.createJob("Wrecker", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/wrecker.mdl"},
	description = [[You the Heavy in the Bad Batch.]],
	weapons = {"rw_sw_dc17m", "rw_sw_z6", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "rw_sw_dc17m_shotgun", "rw_sw_dc17m_sniper", "rw_sw_nade_thermal", "weapon_cuff_elastic", "stunstick", "rw_sw_dc17m_launcher", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/wrecker",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Bad Batch",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(450)
        ply:SetHealth(450)
		ply:SetArmor(250)
    end,
})
TEAM_TECH = DarkRP.createJob("Tech", {
	color = Color(107, 90, 92),
	model = {"models/player/bad_batch/tech.mdl"},
	description = [[You the Tech Expert in the Bad Batch.]],
	weapons = {"rw_sw_dual_dc17s", "rw_sw_bx_blade", "meleearts_blade_throwingknife", "alydus_fusioncutter", "alydus_fortificationbuildertablet", "rw_sw_bino_white", "rw_ammo_distributor","weapon_cuff_elastic", "stunstick", "rw_sw_dc17", "rw_sw_dual_dc17", "rw_sw_dc17c" , "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep", "middlefinger_animation_swep"},
	command = "/tech",
	max = 1,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Bad Batch",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(250)
    end,
})
--[[operations]]--
TEAM_CREWMAN = DarkRP.createJob("Crewman", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_trooper/501st_trooper.mdl"},
	description = [[Your a Operations Crewman.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/operationscrewman",
	max = 0,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Operations Division",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_PILOT = DarkRP.createJob("Pilot", {
	color = Color(255, 223, 46),
	model = {"models/ranz/pilots/regpilots/miscpilot.mdl"},
	description = [[Your a Pilot in the Naval Operations Division.]],
	weapons = {"rw_sw_dc17ext", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/operationspilot",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Operations Division",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end,
})
TEAM_OPERATIONSOFFICER = DarkRP.createJob("Operations Officer", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Naval Operations Officer.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/operationsofficer",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Operations Division",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
TEAM_DIRECTOROFOPERATIONS = DarkRP.createJob("Director of Operations", {
	color = Color(115, 115, 115),
	model = {"models/starwars/grady/501st/captain_rex/captain_rex_ph2.mdl", "models/player/smitty/bf2_reg/501st_commander/501st_commander.mdl"},
	description = [[You the Director of the Naval Operations Division.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/directorofoperations",
	max = 0,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Naval Operations Division",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end,
})
--[[high command]]--
TEAM_COMMODORE = DarkRP.createJob("Commodore", {
	color = Color(184, 50, 50),
	model = {"models/gonzo/republicnavyadmiral/republicnavyadmiral.mdl", "models/smitty/bf2_reg/wolffe_officer/wolffe_officer.mdl"},
	description = [[Your a Commadore in the Navy.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "weapon_cuff_elastic", "stunstick", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/commodore",
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
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You the Marshal Commander.]],
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
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a B1 Battle Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/b1battledroid",
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
TEAM_B2SUPERBATTLEDROID = DarkRP.createJob("B2 Super Battle Droid", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You are a B2 Super Battle Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/b2superbattledroid",
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
TEAM_B1COMMANDERDROID = DarkRP.createJob("B1 Commander Droid", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
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
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
    end,
})
TEAM_BXCOMMANDODROID = DarkRP.createJob("BX Commando Droid", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a BX Commando Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5bx", "rw_sw_z4", "", "rw_sw_e5s_auto", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/bxcommandodroid",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
		ply:SetArmor(250)
    end,
})
TEAM_TACTICALDROID = DarkRP.createJob("Tactical Droid", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a Tactical Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/tacticaldroid",
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
TEAM_GENERALGRIEVOUS = DarkRP.createJob("General Grievous", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You are General Grievous, Leader of the Droid Army.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5bx", "rw_sw_z4", "", "rw_sw_e5s_auto", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/generalgrievous",
	max = 0,
	salary = 1000,
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
TEAM_GENERALGRIEVOUS = DarkRP.createJob("Count Dooku", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You are Count Dooku, Leader of the CIS.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5bx", "rw_sw_z4", "", "rw_sw_e5s_auto", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/countdooku",
	max = 0,
	salary = 1000,
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
TEAM_CISSCIENTIST = DarkRP.createJob("CIS Scientist", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You are a CIS Scientist.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
TEAM_GEONOSIAN = DarkRP.createJob("Geonosian", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a Geonosian.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/geonosian",
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
TEAM_PROTOCOLDROID = DarkRP.createJob("Protocol Droid", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a Protocol Droid.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
TEAM_ASTROMECH = DarkRP.createJob("Astromech", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[Your a Astromech.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/astromech",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Event Jobs",
	PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
    end,
})
TEAM_INTELLIGENCEOFFICER = DarkRP.createJob("Intelligence Officer", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Republic Intelligence Officer.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Gorilla Freedom Fighter, pushing back against the oppression and control of your home planet.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/gorillafighter",
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
TEAM_GORILLALEADER = DarkRP.createJob("Gorilla Leader", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[You are leader of the resistance against the oppression and control of your home planet.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/gorillaleader",
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
TEAM_REPUBLICSCIENTIST = DarkRP.createJob("Republic Scientist", {
	color = Color(184, 50, 50),
	model = {"models/player/smitty/bf2_reg/sm_ct_commander/sm_ct_commander.mdl", "models/smitty/bf2_reg/olive_officer/olive_officer.mdl"},
	description = [[You are a Republic Scientist.]],
	weapons = {"rw_sw_bino_desert", "rw_sw_e5", "weapon_cuff_elastic", "rw_sw_se14c", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
TEAM_BOBAFETT = DarkRP.createJob("Boba Fett", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[You are Boba Fett.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/bobafett",
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
TEAM_MANDALORIAN = DarkRP.createJob("Mandalorian", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Mandalorian.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/mandalorian",
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
TEAM_TRANDOSHIAN = DarkRP.createJob("Trandoshian", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Trandoshian.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
	command = "/trandoshian",
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
TEAM_PIRATE = DarkRP.createJob("Pirate", {
	color = Color(115, 115, 115),
	model = {"models/player/smitty/bf2_reg/501st_lieutenant/501st_lieutenant.mdl", "models/player/smitty/bf2_reg/501st_captain/501st_captain.mdl", "models/player/smitty/bf2_reg/501st_major/501st_major.mdl"},
	description = [[Your a Pirate.]],
	weapons = {"rw_sw_dc17", "alydus_fusioncutter", "rw_sw_bino_white", "keys", "point_in_direction_swep", "hololink_swep", "high_five_swep", "cross_arms_infront_swep", "comlink_swep", "cross_arms_swep", "salute_swep", "surrender_animation_swep"},
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
--[[
mandos
jango fett
bounty hunters
jedi
communications droid
civilian
seperatist general
Dark Jedi
senator
clone juggernaught
probe droid
gonk droid
terrorist
quarren
trandoshian
seperatist spy
republic general
pirate
crimson dawn
]]--

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CADET
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_STAFFONDUTY] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)