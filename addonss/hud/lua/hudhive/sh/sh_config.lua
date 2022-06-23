-----------------------------------------------------------------
-- @package     HUDHive
-- @author      Richard
-- @build       v1.3.6
-- @release     07.25.2016
-- @owner       76561198172575547
-----------------------------------------------------------------
-- BY MODIFYING THIS FILE -- YOU UNDERSTAND THAT THE ABOVE 
-- MENTIONED AUTHORS CANNOT BE HELD RESPONSIBLE FOR ANY ISSUES
-- THAT ARISE. AS A CUSTOMER TO THE ORIGINAL PURCHASED COPY OF
-- THIS SCRIPT, YOU ARE ENTITLED TO STANDARD SUPPORT WHICH CAN
-- BE PROVIDED USING [SCRIPTFODDER.COM]. 
-- ONLY THE ORIGINAL PURCHASER OF THIS SCRIPT CAN RECEIVE SUPPORT.
-----------------------------------------------------------------

HUDHive = HUDHive or {}
HUDHive.Settings = HUDHive.Settings or {}
HUDHive.Language = HUDHive.Language or {}

-----------------------------------------------------------------
-- [ WORKSHOP / FASTDL RESOURCES ]
-----------------------------------------------------------------
-- Set [HUDHive.Settings.ResourcesEnabled] to false if you do not 
-- wish for the server to force players to download the 
-- resources/materials.
-----------------------------------------------------------------
-- Set [HUDHive.Settings.WorkshopEnabled] to false if you do not 
-- wish for the server to force clients to download the resources 
-- from the workshop.
-----------------------------------------------------------------
-- Set [HUDHive.Settings.WorkshopMountGMAEnabled] to false if you 
-- do not wish for the server to force clients to download the 
-- resources from the workshop.
-----------------------------------------------------------------

HUDHive.Settings.ResourcesEnabled = true
HUDHive.Settings.WorkshopMountGMAEnabled = false
HUDHive.Settings.WorkshopEnabled = true

-----------------------------------------------------------------
-- [ DEBUG MODE ]
-----------------------------------------------------------------
-- Enabling this will display special prints during 
-- particular processes which include resource / workshop 
-- mounting, special actions and more. Should really only enable
-- this if you need it.
-----------------------------------------------------------------

HUDHive.Settings.DebugEnabled = false

-----------------------------------------------------------------
-- [ CUSTOM FONTS ]
-----------------------------------------------------------------
-- This script makes use of custom fonts (because they look better)
-- However, if you wish to disable them because for whatever 
-- reason, you cannot sync them to your FastDL, then you can 
-- simply set the below setting to 'false'. This will force the 
-- script to use the default fonts with modified properties in 
-- order to look as good as they can.
-----------------------------------------------------------------

HUDHive.Settings.CustomFontsEnabled = true

-----------------------------------------------------------------
-- [ HIDE HUD ]
-----------------------------------------------------------------
-- These features allow you to toggle if players can hide their
-- hud from being visible. They can use either the keybind 
-- or hide it with a chat command.
-----------------------------------------------------------------
-- You also have the ability to turn this feature off all 
-- together.
-----------------------------------------------------------------

HUDHive.Settings.HideHUDEnabled = false
HUDHive.Settings.HideHUDKey = KEY_F6
HUDHive.Settings.HideHUDCommand = "!hud"

-----------------------------------------------------------------
-- [ DISABLE FEATURES ]
-----------------------------------------------------------------
-- This section lets you disable certain aspects of the hud.
-----------------------------------------------------------------

HUDHive.Settings.MainEnabled = true                -- Enable the main panel (displays avatar, health, job, salary, etc.)
HUDHive.Settings.XPEnabled = true                  -- XP Panel on bottom right (by default). Displays XP and XP Bar.
HUDHive.Settings.XPBarEnabled = true               -- The XP progressive bar. Fills up more as you get more XP.
HUDHive.Settings.AmmoEnabled = true                -- Ammo panel. Shows current magazine count, and clip count.
HUDHive.Settings.AmmoBarEnabled = true             -- Ammo bar (progressive bar that gets smaller as you shoot)
HUDHive.Settings.HeadHudEnabled = true             -- The had hud over each player.
HUDHive.Settings.AgendaEnabled = true              -- Agenda panel when you switch to a job with an agenda.
HUDHive.Settings.LockdownNotiEnabled = true        -- Lockdown Notification system
HUDHive.Settings.WantedNotiEnabled = true          -- If you want wanted notifications to show when a person is wanted.
HUDHive.Settings.AdminTellEnabled = true           -- The GUI for using /admintell <name> <message> - If disabled, default DarkRP admintell will be used.

-----------------------------------------------------------------
-- [ LANGUAGE ]
-----------------------------------------------------------------

HUDHive.Language = {
    arrested = "Arrested",
    announcement = "Announcement",
    money = "Credits",
    salary = "Salary",
    ammoclip = "Clip",
    ammoexta = "Extra",
    level = "Level",
    lockdown_active = "Lockdown Active",
    wanted = "Wanted",
    hr = "hr",
    hour = "hour",
    hours = "hours",
    day = "day",
    days = "days",
    minute = "minute",
    minutes = "minutes",
    total_playtime = "Total Playtime",
    session_playtime = "Session Playtime",
    no_message_available = "No Message Available",
}

-----------------------------------------------------------------
-- [ MAIN GUI SETTINGS ]
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainBoxWidth ]
-- 
-- The WIDTH of the main HUD box (usually bottom-left)
-- Keep in mind that I use IMAGES for my HUD. So if you're going
-- to use the same images I did, it may look off. This setting
-- is for people using transparent background colors, or to make 
-- their own images for the HUD.
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainBoxHeight ]
-- 
-- The HEIGHT of the main HUD box (usually bottom-left)
-- Keep in mind that I use IMAGES for my HUD. So if you're going
-- to use the same images I did, it may look off. This setting
-- is for people using transparent background colors, or to make 
-- their own images for the HUD.
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainPosition ]
-- 
-- Positioning:
--      1 = topLeft
--      2 = topRight
--      3 = bottomLeft
--      4 = bottomRight
-----------------------------------------------------------------

HUDHive.Settings.MainBoxWidth = 300
HUDHive.Settings.MainBoxHeight = 155
HUDHive.Settings.MainPosition = 3

-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAnimatedAvatarEnabled ]
-- 
-- true     :   The animated playermodel will display
-- false    :   Steam avatar picture will be displayed
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAnimatedFOV ]
-- 
-- The Field of View for the animated player model.
-- Default: 12
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAnimatedCamPOS ]
-- 
-- Camera position for animated player model.
-- Default: Vector( 85, -22, 65 ) 
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAnimatedLookAt ]
-- 
-- The camera position for looking at the player model from front.
-- Default: Vector( -2, 0, 62 )
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAvatarTeamBGColor ]
-- 
-- The 5 pixel border around the avatar image/model. 
-- true 	: 	The border will become the color of the player's
-- 				team color.
-- false 	:	Will use standard color assigned to the value 
-- 				HUDHive.Settings.MainAvatarBGColor
-----------------------------------------------------------------
-- [ HUDHive.Settings.MainAvatarBGColor ]
-- 
-- The background color for the avatar window.
-----------------------------------------------------------------

HUDHive.Settings.MainAnimatedAvatarEnabled = true
HUDHive.Settings.MainAnimatedFOV = 12
HUDHive.Settings.MainAnimatedCamPOS = Vector( 85, -22, 65 )
HUDHive.Settings.MainAnimatedLookAt = Vector( -2, 0, 62 )
HUDHive.Settings.MainAvatarTeamBGColor = false
HUDHive.Settings.MainAvatarBGColor = Color( 15, 15, 15, 200 )

-----------------------------------------------------------------
-- [ MAIN GUI SETTINGS CONTINUED ]
-----------------------------------------------------------------

HUDHive.Settings.MainBarBackgroundColor = Color( 15, 15, 15, 255 )
HUDHive.Settings.MainBarOutlineColor = Color( 80, 80, 80, 100 )
HUDHive.Settings.MainPlayerNameTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainPlayerJobTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainStatusShowIcons = true
HUDHive.Settings.MainStatusPulseSpeed = 2
HUDHive.Settings.MainBarsShowProgress = true

-----------------------------------------------------------------
-- [ LEGACY SALARY / FUNDS SETTINGS ]
-----------------------------------------------------------------
-- These settings are for the old way the money/salary use to 
-- look with the text at the bottom with icons. Enable the first 
-- setting below if you want the old way back. Remember to 
-- DISABLE the Money and Salary bars in HUDHive.Settings.Features
-- so that you have enough room for this to show at the bottom.
-----------------------------------------------------------------

HUDHive.Settings.MainLegacyFundsEnabled = false
HUDHive.Settings.MainUseIconsMoneySalary = true
HUDHive.Settings.MainMoneyTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainMoneyTitleTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainMoneyIcon = "hudhive/hh_money.png"
HUDHive.Settings.MainMoneyIconColor = Color(8, 156, 40, 255)
HUDHive.Settings.MainSalaryTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainSalaryTitleTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.MainSalaryIcon = "hudhive/hh_salary.png"
HUDHive.Settings.MainSalaryIconColor = Color(163, 135, 79, 255)

-----------------------------------------------------------------
-- [ BACKGROUNDS -> OPTION 1 -> WEB BASED ]
-----------------------------------------------------------------

HUDHive.Settings.BackgroundsEnable = true
HUDHive.Settings.BackgroundColorSolid = Color( 5, 5, 5, 230 )

-----------------------------------------------------------------
-- [ BACKGROUNDS -> OPTION 2 -> THEME ]
-----------------------------------------------------------------
-- Change the number below to get a different "theme". You can 
-- select from any of the ones below:
-----------------------------------------------------------------
-- 1 = Default (The original)
-- 2 = Grunge (A dark red grunge style)
-----------------------------------------------------------------

HUDHive.Settings.BackgroundsTheme = "1"

HUDHive.Settings.Backgrounds = {
    "http://api.iamrichardt.com/products/1700/resources/backgrounds/hudhive_" .. HUDHive.Settings.BackgroundsTheme .. "_main.png"
}

HUDHive.Settings.BackgroundsAgenda = {
    "http://api.iamrichardt.com/products/1700/resources/backgrounds/hudhive_" .. HUDHive.Settings.BackgroundsTheme .. "_agenda.png"
}

HUDHive.Settings.BackgroundsOther = {
    "http://api.iamrichardt.com/products/1700/resources/backgrounds/hudhive_" .. HUDHive.Settings.BackgroundsTheme .. "_other.png"
}

-----------------------------------------------------------------
-- [ BACKGROUNDS -> OPTION 2 -> WORKSHOP ]
-----------------------------------------------------------------
-- This section is used as a "backup" to the hud images. By
-- default, you can use images hosted from websites to use as 
-- images, but there's a backup in case you ever want to rely on 
-- workshop items.
-----------------------------------------------------------------

HUDHive.Settings.ImageGUIMain = "hudhive/default/hudhive_default_main.png"
HUDHive.Settings.ImageGUIAgenda = "hudhive/default/hudhive_default_agenda.png"
HUDHive.Settings.ImageGUIOther = "hudhive/default/hudhive_default_other.png"

-----------------------------------------------------------------
-- [ DATA FEATURE BLOCKS ]
-----------------------------------------------------------------

HUDHive.Settings.Datablocks = {
    {
        enabled = true,
        blockSpacer = 0,
        blockType = "money",
        blockName = "MONEY",
        blockMax = 1000000,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(24, 99, 25, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_dollar.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = true,
        blockSpacer = 6,
        blockType = "salary",
        blockName = "SALARY",
        blockMax = 22,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(56, 59, 255, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_salary.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = true,
        blockSpacer = 0,
        blockType = "health",
        blockName = "HEALTH",
        blockMax = 100,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(8, 156, 75, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_hp.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = true,
        blockSpacer = 0,
        blockType = "armor",
        blockName = "ARMOR",
        blockMax = 100,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(163, 135, 79, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_armor.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = false,
        blockSpacer = 0,
        blockType = "stamina",
        blockName = "STAMINA",
        blockMax = 100,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(64, 105, 126, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_stamina.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = false,
        blockSpacer = 0,
        blockType = "hunger",
        blockName = "HUNGER",
        blockMax = 100,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(124, 51, 50, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_hunger.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    },
    {
        enabled = false,
        blockSpacer = 0,
        blockType = "xp",
        blockName = "XP",
        blockMax = 100,
        blockLabelColor = Color( 255, 255, 255, 210 ),
        blockBarColor = Color(145, 71, 101, 190),
        blockIconEnabled = true,
        blockIcon = "hudhive/hh_minify_xp.png",
        blockIconColor = Color( 255, 255, 255, 255 )
    }
}

-----------------------------------------------------------------
-- [ XP / AMMO BLOCK ]
-----------------------------------------------------------------
-- [ HUDHive.Settings.XPAmmoPosition ]
-- Positioning:
--      1 = topLeft
--      2 = topRight
--      3 = bottomLeft
--      4 = bottomRight
-----------------------------------------------------------------

HUDHive.Settings.XPAmmoPosition = 4
HUDHive.Settings.XPBoxLeftIcon = "hudhive/hh_leveling.png"
HUDHive.Settings.XPOriginalHudDisabled = true
HUDHive.Settings.XPIconColor = Color(255, 255, 255, 255)
HUDHive.Settings.XPBoxLeftShowIcon = true
HUDHive.Settings.XPBoxLeftShowLevel = true
HUDHive.Settings.XPBoxLeftLevelTextColor = Color(255,255,255,255)
HUDHive.Settings.XPBoxRightShowProgress = false
HUDHive.Settings.XPBoxRightProgressTextColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.XPBarProgressColor = Color(8, 156, 75, 190)
HUDHive.Settings.XPBarBackgroundColor = Color(15,15,15,255)
HUDHive.Settings.XPBarOutlineColor = Color(80, 80, 80, 100)

HUDHive.Settings.AmmoBoxWidth = 220
HUDHive.Settings.AmmoBoxHeight = 80
HUDHive.Settings.AmmoBarColor = Color(64, 105, 126, 190)
HUDHive.Settings.AmmoIcon = "hudhive/hh_bullet.png"
HUDHive.Settings.AmmoIconNormalColor = Color( 255, 255, 255 )
HUDHive.Settings.AmmoIconWarningColor = Color( 255, 30, 30 )
HUDHive.Settings.AmmoTextCountColor = Color( 255, 255, 255, 255 )
HUDHive.Settings.AmmoTextTitleColor = Color( 255, 255, 255, 255 )

-----------------------------------------------------------------
-- [ AGENDA BLOCK ]
-----------------------------------------------------------------
-- [ HUDHive.Settings.AgendaHideIfEmpty ]
--
-- true     :   Completey hides the agenda box if there isn't an 
--              agenda available at the moment.
-- 
-- false    :   Agenda box will display if job has agenda enabled
--              even if it's empty or not.
-----------------------------------------------------------------
-- [ HUDHive.Settings.AgendaPosition ]
-- Positioning:
--      1 = topLeft
--      2 = topRight
--      3 = bottomLeft
--      4 = bottomRight
-----------------------------------------------------------------

HUDHive.Settings.AgendaHideIfEmpty = false
HUDHive.Settings.AgendaPosition = 1
HUDHive.Settings.AgendaIcon = "hudhive/hh_agenda.png"
HUDHive.Settings.AgendaIconColor = Color(255, 255, 255, 255)
HUDHive.Settings.AgendaTitleTextColor = Color(255, 255, 255, 255)
HUDHive.Settings.AgendaContentTextColor = Color(255, 255, 255, 255)

-----------------------------------------------------------------
-- [ HEAD HUD ]
-----------------------------------------------------------------

HUDHive.Settings.HeadHudDrawDistance = 115000
HUDHive.Settings.HeadHudPositionVertical = 105
HUDHive.Settings.HeadHudShowJob = true
HUDHive.Settings.HeadHudJobTextColor = Color(255,255,255,255)
HUDHive.Settings.HeadHudPlayernameEnabled = true

HUDHive.Settings.HeadHudShowHealthNumber = true
HUDHive.Settings.HeadHudHealthBarEnabled = true
HUDHive.Settings.HeadHudHealthBarColor = Color(8, 156, 75, 255)
HUDHive.Settings.HeadHudHealthBarBGColor = Color( 25, 25, 25, 200 )
HUDHive.Settings.HeadHudHealthNumberColor = Color(255,255,255,255)

HUDHive.Settings.HeadHudArmorBarEnabled = true
HUDHive.Settings.HeadHudArmorBarBGColor = Color( 163, 135, 79, 255 )
HUDHive.Settings.HeadHudWantedTextColor = Color( 255, 125, 125, 255)
HUDHive.Settings.HeadHudGunlicenseIcon = "hudhive/hh_license.png"
HUDHive.Settings.HeadHudGunlicenseIconColor = Color( 255,255,255,255 )

HUDHive.Settings.HeadHudShowXPNumber = true
HUDHive.Settings.HeadHudXPBarEnabled = true
HUDHive.Settings.HeadHudXPNumberColor = Color(255,255,255,255)
HUDHive.Settings.HeadHudXPBarColor = Color(124, 51, 50, 190)
HUDHive.Settings.HeadHudXPBarBGColor = Color( 25, 25, 25, 200 )

HUDHive.Settings.HeadHudOrganizationsEnabled = true
HUDHive.Settings.HeadHudOrganizationsDefaultColor = Color( 255, 255, 255, 255 )

-----------------------------------------------------------------
-- [ HEAD HUD -> ITEM POSITIONING ]
-----------------------------------------------------------------
-- Positioning. Allows you to adjust where at these items are 
-- (vertical) - everything horizontal is center aligned.
-----------------------------------------------------------------
-- NOTE: You may need to adjust these if you disable 
-- custom fonts.
-----------------------------------------------------------------

HUDHive.Settings.HeadHudJobHPos = 20
HUDHive.Settings.HeadHudPlayernameHPos = 42
HUDHive.Settings.HeadHudNicknamesHPos = 95
HUDHive.Settings.HeadHudOrganizationsHPos = 2
HUDHive.Settings.HeadHudHealthHPos = 76
HUDHive.Settings.HeadHudXPHPos = 62
HUDHive.Settings.HeadHudArmorHPos = 90

-----------------------------------------------------------------
-- [ HEAD HUD -> USER GROUPS ]
-----------------------------------------------------------------
-- Will display the usergroup above the player's head if it is 
-- listed in the tables below.
-----------------------------------------------------------------
-- You can only use Nicknames OR UserGroups one at a time. If 
-- both are on, then neither will show. Set one to false if this
-- happens.
-----------------------------------------------------------------

HUDHive.Settings.HeadHudShowUserGroup = false

HUDHive.Settings.UserGroupTitles = {}
HUDHive.Settings.UserGroupTitles["superadmin"] = "Owner"
HUDHive.Settings.UserGroupTitles["admin"] = "Administrator"
HUDHive.Settings.UserGroupTitles["supervisor"] = "Supervisor"
HUDHive.Settings.UserGroupTitles["operator"] = "Moderator"
HUDHive.Settings.UserGroupTitles["moderator"] = "Moderator"
HUDHive.Settings.UserGroupTitles["trialmod"] = "Trial Moderator"

HUDHive.Settings.UserGroupColors = {}
HUDHive.Settings.UserGroupColors["superadmin"] = Color( 200, 51, 50, 220 )
HUDHive.Settings.UserGroupColors["admin"] = Color( 72, 112, 58, 220 )
HUDHive.Settings.UserGroupColors["supervisor"] = Color( 145, 71, 101, 220 )
HUDHive.Settings.UserGroupColors["operator"] = Color( 171, 108, 44, 220 )
HUDHive.Settings.UserGroupColors["moderator"] = Color( 171, 108, 44, 220 )
HUDHive.Settings.UserGroupColors["trialmod"] = Color( 163, 135, 79, 220 )

-----------------------------------------------------------------
-- [ HEAD HUD -> NICKNAMES ]
-----------------------------------------------------------------
-- Will display a custom nickname above the player's head if 
-- their Steam32 ID is listed in the table below.
-----------------------------------------------------------------
-- You can only use Nicknames OR UserGroups one at a time. If 
-- both are on, then neither will show. Set one to false if this
-- happens.
-----------------------------------------------------------------
-- To find the Steam32 ID of someone on steam outside your server
-- you can use the Steam ID Finder Tool:
-- http://steamidfinder.com/
-----------------------------------------------------------------

HUDHive.Settings.HeadHudShowNicknames = true

HUDHive.Settings.NicknameTitles = {}
HUDHive.Settings.NicknameTitles["NULL"] = "BOT"
HUDHive.Settings.NicknameTitles["STEAM_0:1:87804999"] = "DEVELOPER"

HUDHive.Settings.NicknameColors = {}
HUDHive.Settings.NicknameColors["NULL"] = Color( 200, 51, 50, 220 )
HUDHive.Settings.NicknameColors["STEAM_0:1:87804999"] = Color( 200, 51, 50, 220 )


-----------------------------------------------------------------
-- [ ADMINTELL NOTIFICATION ]
-----------------------------------------------------------------
-- [ HUDHive.Settings.AdminTellTimer ]
-- 
-- The time (in seconds) a message will stay on the screen when
-- a staff member initializes admintell.
-----------------------------------------------------------------

HUDHive.Settings.AdminTellTimer = 10
HUDHive.Settings.AdminTellBoxPrimaryColor = Color(15,15,15,240)
HUDHive.Settings.AdminTellBoxSecondaryColor = Color(15,15,15,200)
HUDHive.Settings.AdminTellTitleColor = Color(255,255,255,255)
HUDHive.Settings.AdminTellMessageColor = Color(255,255,255,255)

-----------------------------------------------------------------
-- [ LOCKDOWN NOTIFICATION ]
-----------------------------------------------------------------

HUDHive.Settings.LockdownIcon = "hudhive/hh_lockdown.png"
HUDHive.Settings.LockdownBoxText = "A lockdown is active. Please return to your homes until it has been lifted."

-----------------------------------------------------------------
-- [ WANTED NOTIFICATION ]
-----------------------------------------------------------------

HUDHive.Settings.WantedBoxIcon = "hudhive/hh_wanted.png"
HUDHive.Settings.WantedBoxText = "You are wanted!"
HUDHive.Settings.ArrestedIcon = "hudhive/hh_arrested.png"

-----------------------------------------------------------------
-- [ UTIME INTEGRATION ]
-----------------------------------------------------------------
-- [ HUDHive.Settings.UTimeType ]
--
-- Tells the script what type of time to show.
-- session............Displays the current session time
-- total..............Displays the total playtime on the server.
-----------------------------------------------------------------
-- [ HUDHive.Settings.UTimeTimeType ]
--
-- How to display the time for the player.
-- MAKE SURE YOU SPELL THEM CORRECTLY!
--
-- minutes............Example...4 minutes
-- hours..............Example...4 hours
-- days...............Example...4 days
-- full...............Example...00w 4d 00h 00m 00s
-----------------------------------------------------------------

HUDHive.Settings.UTimeEnabled = true                            -- Enable Utime integration?
HUDHive.Settings.UTimeType = "total"                            -- Use session or total
HUDHive.Settings.UTimeLabelSessText = "Session Playtime"        -- Label to replace "Total Playtime" text.
HUDHive.Settings.UTimeLabelTotalText = "Total Playtime"         -- Label to replace "Session Playtime" text.
HUDHive.Settings.UTimeLabelColor = Color(255, 101, 5, 255)      -- Text color for "Total/Session Playtime" text.
HUDHive.Settings.UTimeTextColor = Color(255, 255, 255, 255)     -- Text color for the time itself.
HUDHive.Settings.UTimeTimeType = "full"                         -- "minutes" | "hours" | "days" | "full"
HUDHive.Settings.UTimeIcon1 = "hudhive/hh_clock_1.png"          -- Icon for clock.
HUDHive.Settings.UTimeIcon2 = "hudhive/hh_clock_2.png"          -- Secondary icon for clock.

-----------------------------------------------------------------
-- [ MESSAGE NOTIFICATION ]
-----------------------------------------------------------------

HUDHive.Settings.NotiBoxColorGeneric = Color(15, 15, 15, 255)
HUDHive.Settings.NotiBoxColorError = Color(124, 51, 50, 255)
HUDHive.Settings.NotiBoxColorOkay = Color(8, 156, 75, 255)
HUDHive.Settings.NotiBoxColorHint = Color(64, 105, 126, 255)
HUDHive.Settings.NotiBoxColorCleanup = Color(64, 105, 126, 255)
HUDHive.Settings.NotiBoxTextColor = Color(255,255,255,255)
HUDHive.Settings.NotiBoxRightPos = 15
HUDHive.Settings.NotiBoxHeightPos = 150