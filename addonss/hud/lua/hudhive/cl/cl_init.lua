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

-----------------------------------------------------------------
-- [ TODO ]
-- InitPost needs re-done.
-----------------------------------------------------------------

HUDHive = HUDHive or {}
HUDHive.Settings = HUDHive.Settings or {}

local WeaponAmmo = WeaponAmmo or {}
local WeaponInfo = WeaponInfo or {}
local HUDHiveInit = true
local HUDNotes = HUDNotes or {}
local HUDNote_c = 0
local HUDNote_i = 1

local utimecheck = false
if file.Exists("autorun/cl_utime.lua", "LUA") then 
	utimecheck = true
end

-----------------------------------------------------------------
-- [ CLIENT CONVARS ]
-----------------------------------------------------------------

CreateClientConVar("hudhive_hide", 0, true, false)

-----------------------------------------------------------------
-- [ DEFAULT DARKRP COLOR TABLE ]
-----------------------------------------------------------------

local colors = {}
colors.black = Color(0, 0, 0, 255)
colors.blue = Color(0, 0, 255, 255)
colors.brightred = Color(200, 30, 30, 255)
colors.darkred = Color(0, 0, 70, 100)
colors.darkblack = Color(0, 0, 0, 200)
colors.gray1 = Color(0, 0, 0, 155)
colors.gray2 = Color(51, 58, 51,100)
colors.red = Color(255, 0, 0, 255)
colors.white = Color(255, 255, 255, 255)
colors.white1 = Color(255, 255, 255, 200)


local function AriviaTimeConvert( time )
	local tmp = time
	local s = tmp % 60
	tmp = math.floor( tmp / 60 )
	local m = tmp % 60
	tmp = math.floor( tmp / 60 )
	local h = tmp % 24
	tmp = math.floor( tmp / 24 )
	local d = tmp % 7
	local w = math.floor( tmp / 7 )

	return string.format( "%02iw %id %02ih %02im %02is", w, d, h, m, s )
end

-----------------------------------------------------------------
-- [ IMAGES ]
-----------------------------------------------------------------

local ImageGUIMain = Material(HUDHive.Settings.ImageGUIMain, "noclamp smooth")
local ImageGUIAgenda = Material(HUDHive.Settings.ImageGUIAgenda, "noclamp smooth")
local ImageGUIOther = Material(HUDHive.Settings.ImageGUIOther, "noclamp smooth")
local ImageAgenda = Material(HUDHive.Settings.AgendaIcon, "noclamp smooth")
local ImageAmmoIndicator = Material(HUDHive.Settings.AmmoIcon, "noclamp smooth")
local ImageLeveling = Material(HUDHive.Settings.XPBoxLeftIcon, "noclamp smooth")
local ImageLockdownIndicator = Material(HUDHive.Settings.LockdownIcon, "noclamp smooth")
local ImageMoney = Material(HUDHive.Settings.MainMoneyIcon, "noclamp smooth")
local ImageSalary = Material(HUDHive.Settings.MainSalaryIcon, "noclamp smooth")
local ImageWantedIndicator = Material(HUDHive.Settings.WantedBoxIcon, "noclamp smooth")
local ImageClock1 = Material(HUDHive.Settings.UTimeIcon1, "noclamp smooth")
local ImageClock2 = Material(HUDHive.Settings.UTimeIcon2, "noclamp smooth")
local ImageArrestedIndicator = Material(HUDHive.Settings.ArrestedIcon, "noclamp smooth")
local ImageWeaponLicense = Material(HUDHive.Settings.HeadHudGunlicenseIcon, "noclamp smooth")

-----------------------------------------------------------------
-- [ HIDE ELEMENTS ]
-----------------------------------------------------------------

local ElementList = {
    ["DarkRP_HUD"]              = true,     // Controls all DarkRP huds including arrested, lockdown, etc
    ["DarkRP_LocalPlayerHUD"]   = true,     // Bottom left hud
    ["DarkRP_EntityDisplay"]    = true,     // Info for doors, vehicles, and above player head
    ["DarkRP_ZombieInfo"]       = true,     // Information from /showzombie
    ["DarkRP_Hungermod"]        = true,     // Hunger mod information
    ["DarkRP_Agenda"]           = true,     // Agenda hud
    ["CHudHealth"]              = true,     // Player health
    ["CHudBattery"]             = true,     // Suit battery
    ["CHudSuitPower"]           = true,     // Suit power
    ["CHudAmmo"]                = true,     // Weapon ammo
    ["CHudSecondaryAmmo"]       = true,     // Secondary weapon ammo
}

local function HideElements( element )
	if ElementList[ element ] then
		return false
	end
end
hook.Add( "HUDShouldDraw", "HideElements", HideElements )

-----------------------------------------------------------------
-- [ HELPERS ]
-----------------------------------------------------------------

local blur = Material("pp/blurscreen")
local function DrawBlurPanel( panel, amount, heavyness )
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()

    surface.SetDrawColor( 255, 255, 255 )
    surface.SetMaterial( blur )

    for i = 1, ( heavyness or 3 ) do
        blur:SetFloat( "$blur", ( i / 3 ) * ( amount or 6 ) )
        blur:Recompute()

        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect( x * -1, y * -1, scrW, scrH )
    end
end

function draw.HHOutlinedBox(x, y, w, h, col, bordercol)
    surface.SetDrawColor(col)
    surface.DrawRect(x + 1, y + 1, w - 2, h - 2)
    surface.SetDrawColor(bordercol)
    surface.DrawOutlinedRect(x, y, w, h)
end

function draw.HHOutlinedBoxThick( x, y, w, h, borderthick, clr )
    surface.SetDrawColor( clr )
    for i=0, borderthick - 1 do
        surface.DrawOutlinedRect( x + i, y + i, w - i * 2, h - i * 2 )
    end
end

-----------------------------------------------------------------
-- [ CLEAN PANELS ]
-----------------------------------------------------------------

function HUDHive:CleanPanels()
	if IsValid(HUDHive.PanelMain) then HUDHive.PanelMain:Remove() end
	if IsValid(HUDHive.PanelUTime) then HUDHive.PanelUTime:Remove() end
	if IsValid(HUDHive.PanelAmmoMain) then HUDHive.PanelAmmoMain:Remove() end
	if IsValid(HUDHive.PanelAgendaMain) then HUDHive.PanelAgendaMain:Remove() end
	if IsValid(HUDHive.PanelLockdownMain) then HUDHive.PanelLockdownMain:Remove() end
	if IsValid(HUDHive.PanelWantedMain) then HUDHive.PanelWantedMain:Remove() end
	if IsValid(HUDHive.PanelXPMain) then HUDHive.PanelXPMain:Remove() end
end

-----------------------------------------------------------------
-- [ INITIALIZE ENTIRE HUD ]
-----------------------------------------------------------------

local function HUDHiveInitPanel()

	HUDHive:CleanPanels()

	HUDHive.PanelUTime = vgui.Create("DPanel")
	HUDHive.PanelUTime:SetPos(20, 7)
	HUDHive.PanelUTime:SetSize(HUDHive.Settings.MainBoxWidth - 30,22)
	if HUDHive.Settings.UTimeEnabled and utimecheck then
		HUDHive.PanelUTime:SetVisible(true)
	else
		HUDHive.PanelUTime:SetVisible(false)
	end
	HUDHive.PanelUTime:ParentToHUD()
	HUDHive.PanelUTime.Paint = function(self, w, h)
		draw.HHOutlinedBox( 0, 0, w, h, Color(0,0,0,255), HUDHive.Settings.MainBarOutlineColor )
	end

	if HUDHive.Settings.BackgroundsEnable then

	    local DHTMLUTimeBackground = vgui.Create("DHTML", HUDHive.PanelUTime)
	    DHTMLUTimeBackground:SetSize(ScrW(), ScrH())
	    DHTMLUTimeBackground:SetScrollbars(false)
	    DHTMLUTimeBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsAgenda) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLUTimeBackground.Paint = function(self, w, h) end

	end

   	local PanelUTimeContainer = vgui.Create("DPanel", HUDHive.PanelUTime)
	PanelUTimeContainer:SetSize(HUDHive.PanelUTime:GetWide(), HUDHive.PanelUTime:GetTall())
	PanelUTimeContainer.Paint = function(self, w, h) 
		draw.HHOutlinedBox( 0, 0, w, h, Color(0,0,0,155), HUDHive.Settings.MainBarOutlineColor )
	end

	local LabelUTimeText = vgui.Create("DLabel", HUDHive.PanelUTime)
	LabelUTimeText:Dock(LEFT)
	LabelUTimeText:SetWidth(110)
	LabelUTimeText:SetText("")
	LabelUTimeText.Paint = function(self, w, h)
		surface.SetDrawColor(Color( 255, 255, 255, 255 ))
		surface.SetMaterial(ImageClock2)
		surface.DrawTexturedRect(5, 3, 14, 14)
		local playtimeText = HUDHive.Settings.UTimeLabelText or HUDHive.Language.total_playtime or "Total Playtime"
		draw.DrawText(playtimeText, "HHFontUTime", 25, 3, HUDHive.Settings.UTimeLabelColor or Color(255, 101, 5, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	end

	local LabelUTime = vgui.Create("DLabel", HUDHive.PanelUTime)
	LabelUTime:Dock(RIGHT)
	LabelUTime:DockMargin(0,0,5,0)
	LabelUTime:SetText("")
	LabelUTime:SizeToContents()
	LabelUTime.Paint = function(self, w, h) end

--[[
	local LabelUTimeJob = vgui.Create("DLabel", HUDHive.PanelUTime)
	LabelUTimeJob:Dock(RIGHT)
	LabelUTimeJob:DockMargin(0,3,6,0)
	LabelUTimeJob:SetFont("HHFontJobText")
	LabelUTimeJob:SetContentAlignment(6)
	LabelUTimeJob:SetText(LocalPlayer():getDarkRPVar("job") or "")
	LabelUTimeJob.Paint = function(self, w, h) end

]]--
	HUDHive.PanelMain = vgui.Create("DPanel")
	HUDHive.PanelMain:SetSize(HUDHive.Settings.MainBoxWidth, HUDHive.Settings.MainBoxHeight)
	HUDHive.PanelMain:SetPos(5, 5)
	if not HUDHive.Settings.MainEnabled then 
		HUDHive.PanelMain:SetVisible(false)
	end
	HUDHive.PanelMain:ParentToHUD()
	HUDHive.PanelMain.Paint = function(self, w, h)
		if not HUDHive.Settings.BackgroundsEnable then
			DrawBlurPanel(self)
			draw.RoundedBox(3, 0, 0, w, h, HUDHive.Settings.BackgroundColorSolid )
		end
	end

	-----------------------------------------------------------------
	-- [ HUD INSIDE CONTAINER ]
	-----------------------------------------------------------------

	HUDHive.PanelHHContainer = vgui.Create("DPanel", HUDHive.PanelMain)
	HUDHive.PanelHHContainer:Dock(FILL)
	HUDHive.PanelHHContainer:DockMargin(5,5,5,5)
	HUDHive.PanelHHContainer.Paint = function(self, w, h) end

	-----------------------------------------------------------------
	-- [ HTML BACKGROUND SUPPORT ]
	-----------------------------------------------------------------

	if HUDHive.Settings.BackgroundsEnable then
	    local DHTMLMainBackground = vgui.Create("DHTML", HUDHive.PanelMain)
	    DHTMLMainBackground:SetSize(ScrW(), ScrH())
	    DHTMLMainBackground:SetScrollbars(false)
	    DHTMLMainBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.Backgrounds) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLMainBackground.Paint = function(self, w, h) end
	end

	-----------------------------------------------------------------
	-- [ LEFT PANEL ]
	-----------------------------------------------------------------

	local PanelLeft = HUDHive.PanelMain:Add("DPanel", HUDHive.PanelHHContainer)
	PanelLeft:Dock(LEFT)
	PanelLeft:DockMargin(5,5,5,5)
	PanelLeft:SetWide(109)
    PanelLeft.Paint = function(self, w, h)
    	if HUDHive.Settings.MainStatusShowIcons then
			local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )

			-- Wanted
			if LocalPlayer():isWanted() then
				surface.SetDrawColor(Color( doPulse, doPulse, 0, 255 ))
			else
				surface.SetDrawColor(Color( 0, 0, 0, 255 ))
			end
			surface.SetMaterial(ImageWantedIndicator)
			surface.DrawTexturedRect(PanelLeft:GetWide()/2 - 34, 80, 16, 16)

			-- Lockdown
			if GetGlobalBool("DarkRP_LockDown") then
				surface.SetDrawColor(Color( doPulse, doPulse, 0, 255 ))
			else
				surface.SetDrawColor(Color( 0, 0, 0, 255 ))
			end
			surface.SetMaterial(ImageLockdownIndicator)
			surface.DrawTexturedRect(PanelLeft:GetWide()/2 - 8, 80, 16, 16)

			-- Gun License
			if LocalPlayer():getDarkRPVar("HasGunlicense") then
				surface.SetDrawColor(Color( 0, 255, 0, 255 ))
			else
				surface.SetDrawColor(Color( 0, 0, 0, 255 ))
			end
			surface.SetMaterial(ImageWeaponLicense)
			surface.DrawTexturedRect(PanelLeft:GetWide()/2 + 18, 80, 16, 16)

		end
	end

	local PanelRight = HUDHive.PanelMain:Add("DPanel", HUDHive.PanelHHContainer)
	PanelRight:Dock(FILL)
	PanelRight:DockMargin(0,5,0,0)
    PanelRight.Paint = function(self, w, h) end

	-----------------------------------------------------------------
	-- [ LEGACY SALARY / MONEY COUNTER ]
	-----------------------------------------------------------------

    if HUDHive.Settings.MainLegacyFundsEnabled then

		local PanelBottom = HUDHive.PanelMain:Add("DPanel", HUDHive.PanelHHContainer)
		PanelBottom:Dock(BOTTOM)
		PanelBottom:DockMargin(0,0,0,0)
		PanelBottom:SetTall(35)	
		PanelBottom:SetWide(109)
	    PanelBottom.Paint = function(self, w, h)

	    	if HUDHive.Settings.MainUseIconsMoneySalary then

				surface.SetDrawColor( HUDHive.Settings.MainMoneyIconColor )
				surface.SetMaterial(ImageMoney)
				surface.DrawTexturedRect(10, 8, 16, 16)

				local fundsYPos = 3
				if not HUDHive.Settings.CustomFontsEnabled then
					fundsYPos = 7
				end

				draw.DrawText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("money")) or 0, "HHFontPlayerMoney", 32, fundsYPos, HUDHive.Settings.MainMoneyTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
				surface.SetDrawColor( HUDHive.Settings.MainSalaryIconColor )
				surface.SetMaterial(ImageSalary)
				surface.DrawTexturedRect(w - 27, 7, 16, 16)

				draw.DrawText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("salary")) or 0, "HHFontSalaryMoney", w - 32, fundsYPos, HUDHive.Settings.MainSalaryTitleTextColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)

			else

				draw.DrawText(string.upper(HUDHive.Language.money), "HHFontPlayerMoney", 10, 8, HUDHive.Settings.MainMoneyTitleTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
				draw.DrawText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("money")) or 0, "HHFontPlayerMoney", w - 10, 0, HUDHive.Settings.MainMoneyTextColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)

				draw.DrawText(string.upper(HUDHive.Language.salary), "HHFontSalaryMoney", 10, 21, HUDHive.Settings.MainSalaryTitleTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
				draw.DrawText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("salary")) or 0, "HHFontSalaryMoney", w - 10, 21, HUDHive.Settings.MainSalaryTitleTextColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)

			end

		end

	end

	-----------------------------------------------------------------
	-- [ AVATAR ]
	-----------------------------------------------------------------

	local PanelAvatar = HUDHive.PanelMain:Add("DPanel", PanelLeft)
	PanelAvatar:SetPos(22, 7)
	PanelAvatar:SetSize(74,74)
	PanelAvatar.Paint = function(self, w, h)

		local avatarBackgroundColor = HUDHive.Settings.MainAvatarBGColor
		if HUDHive.Settings.MainAvatarTeamBGColor then
			avatarBackgroundColor = team.GetColor( LocalPlayer():Team() )
		end

		if LocalPlayer():isWanted() or GetGlobalBool("DarkRP_LockDown") then
			local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )
			avatarBackgroundColor = Color( doPulse, doPulse, 0, 100 )
		end

		draw.RoundedBox(3, 0, 0, w, h, Color( avatarBackgroundColor.r, avatarBackgroundColor.g, avatarBackgroundColor.b, 200 ) )
	end

	if HUDHive.Settings.MainAnimatedAvatarEnabled then

		local PlayerModel = vgui.Create("DModelPanel", PanelAvatar)
		PlayerModel:SetModel(LocalPlayer():GetModel())
        PlayerModel:SetPos(5, 5)
        PlayerModel:SetSize(64, 64)
        PlayerModel:SetFOV(HUDHive.Settings.MainAnimatedFOV)
        PlayerModel:SetCamPos(HUDHive.Settings.MainAnimatedCamPOS)
        PlayerModel:SetLookAt(HUDHive.Settings.MainAnimatedLookAt)
		PlayerModel.Think = function()
			PlayerModel:SetModel(LocalPlayer():GetModel())
			local PlayerModelBGroup = ""
			local PlayerModelSkin = LocalPlayer():GetSkin() or 0

			for n = 0, LocalPlayer():GetNumBodyGroups() do
				PlayerModelBGroup = PlayerModelBGroup .. LocalPlayer():GetBodygroup(n)
			end
			PlayerModel.Entity:SetBodyGroups(PlayerModelBGroup)
			PlayerModel.Entity:SetSkin(PlayerModelSkin)
		end
		PlayerModel.LayoutEntity = function(ent) 
			return 
		end
		function PlayerModel.Entity:GetPlayerColor() return LocalPlayer():GetPlayerColor() end
		function PlayerModel.Entity:GetSkin() return LocalPlayer():GetSkin() end


	else

		local AvatarPlayer = vgui.Create("AvatarImage", PanelAvatar)
		AvatarPlayer:SetSize( 64, 64 )
		AvatarPlayer:SetPlayer(LocalPlayer(), 64)
		AvatarPlayer:SetPos(5, 5)

	end

	-----------------------------------------------------------------
	-- [ LEFT PANEL TEXT ]
	-----------------------------------------------------------------

	local LabelPlayerName = vgui.Create("DLabel", PanelLeft)
	LabelPlayerName:SetColor(HUDHive.Settings.MainPlayerNameTextColor)
	LabelPlayerName:SetFont("HHFontPlayernameText")
	LabelPlayerName:SetSize( LabelPlayerName:GetParent():GetWide(), 32)
	LabelPlayerName:Dock(FILL)
	LabelPlayerName:DockMargin(0, 90, 0, 0)
	LabelPlayerName:SetContentAlignment(5)
	LabelPlayerName:SetText("")
	timer.Create( "UpdatePlayername", 1, 0, function()
		LabelPlayerName:SetText(LocalPlayer():Nick())
	end)

	local LabelPlayerJob = vgui.Create("DLabel", PanelLeft)
	LabelPlayerJob:SetColor(HUDHive.Settings.MainPlayerJobTextColor)
	LabelPlayerJob:SetFont("HHFontJobText")
	LabelPlayerJob:SetSize( LabelPlayerName:GetParent():GetWide(), 32)
	LabelPlayerJob:Dock(FILL)
	LabelPlayerJob:DockMargin(0,0,0,0)
	LabelPlayerJob:SetContentAlignment(2)
	LabelPlayerJob:SetText("")
	LabelPlayerJob.Paint = function(self, w, h)
		draw.DrawText(LocalPlayer():getDarkRPVar("job") or "", "HHFontJobText", w / 2, h - 22, HUDHive.Settings.MainPlayerJobTextColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	-----------------------------------------------------------------
	-- [ FUNCTION -> CREATE BLOCK ]
	-----------------------------------------------------------------
	-- Each block will be cycled through the function via the config
	-- file. 
	-----------------------------------------------------------------
	-- [ blockName ] 	
	-- The name of the block (Health, XP, etc)
	-----------------------------------------------------------------
	-- [blockType] 	
	-- This specifies an ID for the block to decide what data to pull
	-----------------------------------------------------------------
	-- [ blockMax ]
	-- The max value for the block. <number / maxvalue>
	-----------------------------------------------------------------
	-- [ blockIconEnabled ]
	-- If you want to use icons, true for icon - false for text
	-----------------------------------------------------------------
	-- [ blockIcon ]
	-- If you want to use icons, this will be the image that you 
	-- want to use
	-----------------------------------------------------------------
	-- [ blockLabelColor ]  
	-- The text color for the blockName
	-----------------------------------------------------------------
	-- [ blockBarColor ]  
	-- The color of the progress bar
	-----------------------------------------------------------------
	-- [ blockIconColor ]  
	-- The color of the icon.
	-----------------------------------------------------------------

	local function CreateBlock( blockName, blockSpacer, blockType, blockMax, blockIconEnabled, blockIcon, blockLabelColor, blockBarColor, blockIconColor )

		local CalcProg = 0
		local Spacer = blockSpacer or 0

		-----------------------------------------------------------------
		-- [ CreateBlock - > Primary Container ]
		-----------------------------------------------------------------

		HUDHive.PanelBlockContainer = vgui.Create("DPanel", PanelRight)
		HUDHive.PanelBlockContainer:Dock(TOP)
		HUDHive.PanelBlockContainer:DockMargin(5, 0, 5, Spacer)
		HUDHive.PanelBlockContainer:SetTall(20)
		HUDHive.PanelBlockContainer.Paint = function(self, w, h) end

		-----------------------------------------------------------------
		-- [ CreateBlock - > Progress Bar ]
		-----------------------------------------------------------------

		local PanelBlockProgress = HUDHive.PanelBlockContainer:Add("DPanel")
		PanelBlockProgress:SetSize(10, 18)
		PanelBlockProgress:DockMargin(5, 1, 5, 1)
		PanelBlockProgress:Dock(TOP)
		PanelBlockProgress.Paint = function(self, w, h)

			surface.SetDrawColor(HUDHive.Settings.MainBarBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(blockBarColor)
			surface.DrawRect(0, 0, w*(math.Clamp(CalcProg or 0, 0, 1)), h)

			surface.SetDrawColor(Color(10,10,10,66))
			surface.DrawRect(0, 9, w*(math.Clamp(CalcProg or 0, 0, 1)), h)

			draw.HHOutlinedBoxThick( 0, 0, w, h, 1, HUDHive.Settings.MainBarOutlineColor )

		end
		PanelBlockProgress.Think = function()

			if not IsValid(LocalPlayer()) then return end
			
	   		local getBlockData
				if blockType == "money" then getBlockData = LocalPlayer():getDarkRPVar("money")
				elseif blockType == "salary" then getBlockData = LocalPlayer():getDarkRPVar("salary") or 0
				elseif blockType == "health" then getBlockData = LocalPlayer():Health() or 0
				elseif blockType == "armor" then getBlockData = LocalPlayer():Armor() or 0
				elseif blockType == "hunger" then getBlockData = math.Round(LocalPlayer():getDarkRPVar( "Energy" ) or 0)
				elseif blockType == "stamina" then getBlockData = LocalPlayer():getDarkRPVar("Stamina") or LocalPlayer():getDarkRPVar("stamina") or LocalPlayer():GetNWInt("tcb_Stamina") or LocalPlayer():GetNWFloat("stamina",0) or 0
				elseif blockType == "xp" and (DARKRP_LVL_SYSTEM or LevelSystemConfiguration) then
					local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
					local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
					local expFormat = 0
					local calcXP = 0
					if LevelSystemConfiguration then
						local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) ) or 0
						calcXP = xpPercent * 100 or 0
						calcXP = math.Round(calcXP) or 0
						expFormat = math.Clamp(calcXP, 0, 99)
						getBlockData = expFormat or 0
					elseif DARKRP_LVL_SYSTEM then
						local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
						if not formatPlayerlevel then return end
						playerXP = math.floor(playerXP) or 0
						calcXP = (playerXP*100/formatPlayerlevel) or 0
						expFormat = math.floor(calcXP) or 0
						getBlockData = expFormat or 0
					end
				else getBlockData = "0" 
			end

			local prog = (getBlockData / blockMax) or 0
			CalcProg = Lerp(FrameTime()*3, CalcProg or 0, prog or 0)

		end

		-----------------------------------------------------------------
		-- [ CreateBlock - > Block Progress ]
		-----------------------------------------------------------------
		-- Label for LEFT side of each block. You can either have the 
		-- text label display or you can utilize icons only.
		-----------------------------------------------------------------
		-- ICONS ONLY: 	HUDHive.Settings.MainBarsUseIcons = true
		-- TEXT ONLY:	HUDHive.Settings.MainBarsUseIcons = false
		-----------------------------------------------------------------

		local LabelBlockName = vgui.Create("DLabel", PanelBlockProgress)
		LabelBlockName:Dock(LEFT)
		LabelBlockName:DockMargin(3,2,2,2)
		LabelBlockName:SetWide(250)
		LabelBlockName:SetFont("HHFontBlockInfo")
		LabelBlockName:SetText("")
   		LabelBlockName.Paint = function(self, w, h)
   			if blockIconEnabled then
				local ImageBlock = Material(blockIcon, "noclamp smooth")
				surface.SetDrawColor(blockIconColor or Color( 255, 255, 255, 255 ))
				surface.SetMaterial(ImageBlock)
				surface.DrawTexturedRect(1, 1, 12, 12)
			else
				LabelBlockName:SetText(blockName)
			end
		end

		-----------------------------------------------------------------
		-- [ CreateBlock - > Block Progress ]
		-----------------------------------------------------------------
		-- Label for RIGHT side of each block. The right side displays 
		-- the current progress of each item. You can either have this 
		-- progress information or you can hide it.
		-----------------------------------------------------------------
		-- Show progress: 	HUDHive.Settings.MainBarsShowProgress = true
		-- Hide progress:	HUDHive.Settings.MainBarsShowProgress = false
		-----------------------------------------------------------------

		local LabelBlockNameR = vgui.Create("DLabel", PanelBlockProgress)
		LabelBlockNameR:Dock(RIGHT)
		LabelBlockNameR:DockMargin(3,2,5,2)
		LabelBlockNameR:SetWide(75)
		LabelBlockNameR:SetFont("HHFontBlockInfo")
		LabelBlockNameR:SetText("")
		LabelBlockNameR:SetContentAlignment(6)
   		LabelBlockNameR.Paint = function(self, w, h)
	   		local getBlockData
			if blockType == "money" then getBlockData = DarkRP.formatMoney(LocalPlayer():getDarkRPVar("money")) or 0
				elseif blockType == "salary" then getBlockData = DarkRP.formatMoney(LocalPlayer():getDarkRPVar("salary")) .. " / " .. HUDHive.Language.hr
				elseif blockType == "health" then getBlockData = LocalPlayer():Health()
				elseif blockType == "armor" then getBlockData = LocalPlayer():Armor()
				elseif blockType == "hunger" then getBlockData = math.Round(LocalPlayer():getDarkRPVar( "Energy" ) or 0)
				elseif blockType == "stamina" then getBlockData = LocalPlayer():getDarkRPVar("Stamina") or LocalPlayer():getDarkRPVar("stamina") or LocalPlayer():GetNWInt("tcb_Stamina") or LocalPlayer():GetNWFloat("stamina",0)
				elseif blockType == "xp" and (DARKRP_LVL_SYSTEM or LevelSystemConfiguration) then
					local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
					local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
					local expFormat = 0
					local calcXP = 0
					if LevelSystemConfiguration then
						local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
						calcXP = xpPercent * 100
						calcXP = math.Round(calcXP)
						expFormat = math.Clamp(calcXP, 0, 99)
						getBlockData = expFormat
					elseif DARKRP_LVL_SYSTEM then
						local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
						if not formatPlayerlevel then return end
						playerXP = math.floor(playerXP)
						calcXP = (playerXP*100/formatPlayerlevel) or 0
						expFormat = math.floor(calcXP)
						getBlockData = expFormat
					end
				else getBlockData = "0" 
			end
			if HUDHive.Settings.MainBarsShowProgress then
				LabelBlockNameR:SetText(getBlockData)
			end
		end

		return HUDHive.PanelBlockContainer

	end

	for k, v in pairs( HUDHive.Settings.Datablocks ) do

		if not v.enabled then continue end

   		local getBlockData
		if blockType == "money" then getBlockData = DarkRP.formatMoney(LocalPlayer():getDarkRPVar("money")) or 0
			elseif blockType == "salary" then getBlockData = DarkRP.formatMoney(LocalPlayer():getDarkRPVar("salary")) or 0
			elseif blockType == "health" then getBlockData = LocalPlayer():Health()
			elseif blockType == "armor" then getBlockData = LocalPlayer():Armor()
			elseif blockType == "hunger" then getBlockData = math.Round(LocalPlayer():getDarkRPVar( "Energy" ) or 0)
			elseif blockType == "stamina" then getBlockData = LocalPlayer():getDarkRPVar("Stamina") or LocalPlayer():getDarkRPVar("stamina") or LocalPlayer():GetNWInt("tcb_Stamina") or LocalPlayer():GetNWFloat("stamina",0)
			elseif blockType == "xp" and (DARKRP_LVL_SYSTEM or LevelSystemConfiguration) then
				local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
				local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
				local expFormat = 0
				local calcXP = 0
				if LevelSystemConfiguration then
					local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
					calcXP = xpPercent * 100
					calcXP = math.Round(calcXP)
					expFormat = math.Clamp(calcXP, 0, 99)
					getBlockData = expFormat
				elseif DARKRP_LVL_SYSTEM then
					playerXP = math.floor(playerXP)
					calcXP = (playerXP*100/formatPlayerlevel) or 0
					expFormat = math.floor(calcXP)
					getBlockData = expFormat
				end
			else getBlockData = "0" 
		end
		local prog = getBlockData / v.blockMax

		local ItemHealth = CreateBlock(v.blockName, v.blockSpacer, v.blockType, v.blockMax, v.blockIconEnabled, v.blockIcon, v.blockLabelColor, v.blockBarColor, v.blockIconColor)
		ItemHealth.mat = MatHealth

	end

	-----------------------------------------------------------------
	-- [ AMMO PANEL ]
	-----------------------------------------------------------------

	HUDHive.PanelAmmoMain = vgui.Create("DPanel")
	HUDHive.PanelAmmoMain:SetSize(HUDHive.Settings.AmmoBoxWidth, HUDHive.Settings.AmmoBoxHeight)
	if not HUDHive.Settings.AmmoEnabled then
		HUDHive.PanelAmmoMain:SetVisible(false)
	end
	if HUDHive.Settings.XPAmmoPosition == 1 then
		HUDHive.PanelAmmoMain:SetPos(5, 5)
	elseif HUDHive.Settings.XPAmmoPosition == 2 then
		HUDHive.PanelAmmoMain:SetPos(ScrW() - HUDHive.PanelAmmoMain:GetWide() - 5, 5)
	elseif HUDHive.Settings.XPAmmoPosition == 3 then
		HUDHive.PanelAmmoMain:SetPos(5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 5)
	elseif HUDHive.Settings.XPAmmoPosition == 4 then
		HUDHive.PanelAmmoMain:SetPos(ScrW() - HUDHive.PanelAmmoMain:GetWide() - 5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 5)
	end
	HUDHive.PanelAmmoMain:ParentToHUD()
	HUDHive.PanelAmmoMain.Paint = function(self, w, h) 
		if not HUDHive.Settings.BackgroundsEnable and HUDHive.PanelAmmoMain:IsVisible() then
			DrawBlurPanel(self)
			draw.RoundedBox(3, 0, 0, w, h, HUDHive.Settings.BackgroundColorSolid )
		end
	end

	-----------------------------------------------------------------
	-- [ HTML BACKGROUND SUPPORT ]
	-----------------------------------------------------------------

	if HUDHive.Settings.BackgroundsEnable then

	    local DHTMLAmmoBackground = vgui.Create("DHTML", HUDHive.PanelAmmoMain)
	    DHTMLAmmoBackground:SetSize(ScrW(), ScrH())
	    DHTMLAmmoBackground:SetScrollbars(false)
	    DHTMLAmmoBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsOther) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLAmmoBackground.Paint = function(self, w, h) end

	end

   	local PanelAmmoContainer = vgui.Create("DPanel", HUDHive.PanelAmmoMain)
	PanelAmmoContainer:SetSize(HUDHive.PanelAmmoMain:GetWide(), HUDHive.PanelAmmoMain:GetTall())
	PanelAmmoContainer.Paint = function(self, w, h) 

		local PlayerWeapon = LocalPlayer():GetActiveWeapon()
		if !IsValid(PlayerWeapon) then return end

		local ImageAmmoColor = Color(HUDHive.Settings.AmmoIconNormalColor.r,HUDHive.Settings.AmmoIconNormalColor.g,HUDHive.Settings.AmmoIconNormalColor.b)
		local FBReloadBaseAlpha = 0
		local FBReloadIconAlpha = 1

		local FBMagMax = 0
		if PlayerWeapon.Primary then
			FBMagMax = PlayerWeapon.Primary.ClipSize or 0
		end

		local countAmmoClip = tonumber(PlayerWeapon:Clip1()) or 0
		local countAmmoTotal = LocalPlayer():GetAmmoCount(PlayerWeapon:GetPrimaryAmmoType() or "")

		if (PlayerWeapon:Clip1() <= FBMagMax / 3 and FBMagMax > 0) or (countAmmoClip < 3) then
			FBReloadBaseAlpha = math.Clamp(FBReloadBaseAlpha + 40,0,255)
			FBReloadIconAlpha = 255 * math.sin(CurTime() * 5)
			ImageAmmoColor = Color(HUDHive.Settings.AmmoIconWarningColor.r,HUDHive.Settings.AmmoIconWarningColor.g,HUDHive.Settings.AmmoIconWarningColor.b)
		else
			FBReloadBaseAlpha = math.Clamp(FBReloadBaseAlpha - 40,0,255)
			FBReloadIconAlpha = 255
		end

		draw.RoundedBox(0, 0, 0, w, h, Color(15,15,15,200))

		surface.SetDrawColor(ImageAmmoColor.r,ImageAmmoColor.g,ImageAmmoColor.b,FBReloadIconAlpha)
		surface.SetMaterial(ImageAmmoIndicator)
		if HUDHive.Settings.AmmoBarEnabled then
			surface.DrawTexturedRect(w/2 - 18, h/2 - 20, 32, 32)
		else
			surface.DrawTexturedRect(w/2 - 18, h/2 - 15, 32, 32)
		end

	end

	HUDHive.PanelAmmoBox_Left = HUDHive.PanelAmmoMain:Add("DPanel")
	HUDHive.PanelAmmoBox_Left:DockMargin(5,5,5,5)
	HUDHive.PanelAmmoBox_Left:Dock(LEFT)
	HUDHive.PanelAmmoBox_Left.Paint = function(self, w, h)
		local PlayerWeapon = LocalPlayer():GetActiveWeapon()
		if !IsValid(PlayerWeapon) then return end

		local countAmmoClip = tonumber(PlayerWeapon:Clip1()) or nil

		local positionHeight = 15
		if HUDHive.Settings.AmmoBarEnabled then
			positionHeight = 21
		end

		local positionYMargin = 20
		local positionCountYMargin = 20
		if not HUDHive.Settings.CustomFontsEnabled then
			positionYMargin = 26
			positionCountYMargin = 10
		end

		if countAmmoClip == nil or countAmmoClip == -1 then
			countAmmoClip = "-"
		end

		draw.DrawText(countAmmoClip, "HHFontAmmoCount", w / 2, h / 2 - positionHeight - positionCountYMargin, HUDHive.Settings.AmmoTextCountColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.DrawText(string.upper(HUDHive.Language.ammoclip), "HHFontAmmoType", w / 2, h / 2 - positionHeight + positionYMargin, HUDHive.Settings.AmmoTextTitleColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	HUDHive.PanelAmmoBox_Right = HUDHive.PanelAmmoMain:Add("DPanel")
	HUDHive.PanelAmmoBox_Right:DockMargin(5,5,5,5)
	HUDHive.PanelAmmoBox_Right:Dock(FILL)
	HUDHive.PanelAmmoBox_Right.Paint = function(self, w, h)
		local PlayerWeapon = LocalPlayer():GetActiveWeapon()
		if !IsValid(PlayerWeapon) then return end

		local countAmmoTotal = LocalPlayer():GetAmmoCount(PlayerWeapon:GetPrimaryAmmoType() or "")
		local positionHeight = 15
		if HUDHive.Settings.AmmoBarEnabled then
			positionHeight = 21
		end

		local positionYMargin = 20
		local positionCountYMargin = 20
		if not HUDHive.Settings.CustomFontsEnabled then
			positionYMargin = 26
			positionCountYMargin = 10
		end

		if countAmmoTotal == nil or countAmmoTotal == "" then
			countAmmoTotal = "-"
		end

		draw.DrawText(countAmmoTotal, "HHFontAmmoCount", w / 2, h / 2 - positionHeight - positionCountYMargin, HUDHive.Settings.AmmoTextCountColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.DrawText(string.upper(HUDHive.Language.ammoexta), "HHFontAmmoType", w / 2, h / 2 - positionHeight + positionYMargin, HUDHive.Settings.AmmoTextTitleColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
	HUDHive.PanelAmmoBox_Right.Think = function() end

	if HUDHive.Settings.AmmoBarEnabled then

		-----------------------------------------------------------------
		-- [ AMMO PANEL -> PROGRESS BAR ]
		-----------------------------------------------------------------

	   	local PanelHHAmmoBar = vgui.Create("DPanel", HUDHive.PanelAmmoMain)
		PanelHHAmmoBar:SetSize(HUDHive.PanelAmmoMain:GetWide(), 15)
		PanelHHAmmoBar:SetPos(0, HUDHive.PanelAmmoMain:GetTall() - 15)
		PanelHHAmmoBar.Paint = function(self, w, h) 

			local PlayerWeapon = LocalPlayer():GetActiveWeapon()
			if !IsValid(PlayerWeapon) then return end

			local clipAmount = tonumber(PlayerWeapon:Clip1()) or nil

			local clipCapacity = 0
			if PlayerWeapon.Primary then
				clipCapacity = tonumber(PlayerWeapon.Primary.ClipSize or 0)
			else
				clipCapacity = tonumber(PlayerWeapon:GetMaxClip1())
			end

			local ammoBarW = HUDHive.PanelAmmoMain:GetWide()	
			local calcAmmo = clipAmount/clipCapacity 

			surface.SetDrawColor(Color(15,15,15,255))
			surface.DrawRect(0, 0, w, h)

			draw.RoundedBox(0, 0, 0, math.Clamp( ammoBarW * calcAmmo, 0, ammoBarW ), h, HUDHive.Settings.AmmoBarColor)
			surface.SetDrawColor(Color(10,10,10,66))
			surface.DrawRect(0, 9, math.Clamp( ammoBarW * calcAmmo, 0, ammoBarW ), h)

			draw.HHOutlinedBoxThick( 0, 0, w, h, 1, Color( 80, 80, 80, 100 ) )

		end
	end

	-----------------------------------------------------------------
	-- [ EXPERIENCE (XP) SYSTEM INTEGRATION ]
	-----------------------------------------------------------------

	HUDHive.PanelXPMain = vgui.Create("DPanel")
	if HUDHive.Settings.XPBarEnabled then
		HUDHive.PanelXPMain:SetSize(220, 45)
	else
		HUDHive.PanelXPMain:SetSize(220, 35)
	end
	HUDHive.PanelXPMain:SetPos(ScrW() - HUDHive.PanelXPMain:GetWide() - 5, ScrH() - HUDHive.PanelXPMain:GetTall() - 5)
	HUDHive.PanelXPMain:ParentToHUD()
	if not (LevelSystemConfiguration or DARKRP_LVL_SYSTEM) and not HUDHive.Settings.XPEnabled then
		HUDHive.PanelXPMain:SetVisible(false)
	else
		HUDHive.PanelXPMain:SetVisible(true)
	end

	HUDHive.PanelXPMain.Paint = function(self, w, h) 
		if not HUDHive.Settings.BackgroundsEnable and HUDHive.PanelXPMain:IsVisible(true) then
			DrawBlurPanel(self)
			draw.RoundedBox(3, 0, 0, w, h, HUDHive.Settings.BackgroundColorSolid )
		end
	end

	if HUDHive.Settings.XPEnabled and (LevelSystemConfiguration or DARKRP_LVL_SYSTEM) then

		if HUDHive.Settings.BackgroundsEnable then

		    local DHTMLXPBackground = vgui.Create("DHTML", HUDHive.PanelXPMain)
		    DHTMLXPBackground:SetSize(ScrW(), ScrH())
		    DHTMLXPBackground:SetScrollbars(false)
		    DHTMLXPBackground:SetHTML([[
		        <body style="overflow: hidden; height: auto; width: auto;">
		            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsOther) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
		        </body>
		    ]])
		    DHTMLXPBackground.Paint = function(self, w, h) end

		end

	   	local PanelXPContainer = vgui.Create("DPanel", HUDHive.PanelXPMain)
		PanelXPContainer:SetSize(HUDHive.PanelXPMain:GetWide(), HUDHive.PanelXPMain:GetTall())
		PanelXPContainer.Paint = function(self, w, h) 
			local PlayerWeapon = LocalPlayer():GetActiveWeapon()
			if !IsValid(PlayerWeapon) then return end
			local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
			local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
			local expFormat = 0
			local calcXP = 0

			if LevelSystemConfiguration then
				local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
				calcXP = xpPercent * 100
				calcXP = math.Round(calcXP)
				expFormat = math.Clamp(calcXP, 0, 99)
			elseif DARKRP_LVL_SYSTEM then
				local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
				if not formatPlayerlevel then return end
				playerXP = math.floor(playerXP)
				calcXP = (playerXP*100/formatPlayerlevel) or 0
				expFormat = math.floor(calcXP)
			end

			draw.RoundedBox(0, 0, 0, w, h, Color(15, 15, 15, 200))

			local ImageHeight = 4
			local TextHeight = 2
			if not HUDHive.Settings.XPBarEnabled then
				ImageHeight = 7
				TextHeight = 5
			end

			if HUDHive.Settings.XPBoxLeftShowIcon then
				surface.SetDrawColor(HUDHive.Settings.XPIconColor)
				surface.SetMaterial(ImageLeveling)
				surface.DrawTexturedRect(5, ImageHeight, 22, 22)
			end

			local xpYOffset = TextHeight
			local perYOffset = TextHeight
			if not HUDHive.Settings.CustomFontsEnabled then
				xpYOffset = TextHeight + 5
				perYOffset = TextHeight + 5
			end

			if HUDHive.Settings.XPBoxLeftShowLevel then
				draw.DrawText(string.upper(HUDHive.Language.level) .. " " .. playerLevel or 0, "HHFontXPInfo", 35, xpYOffset, HUDHive.Settings.XPBoxLeftLevelTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
			end

			if HUDHive.Settings.XPBoxRightShowProgress then
				draw.DrawText(expFormat .. "%", "HHFontXPInfo", w - 8, perYOffset, HUDHive.Settings.XPBoxRightProgressTextColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
			end

		end

		-----------------------------------------------------------------
		-- [ XP SYSTEM -> BAR ]
		-----------------------------------------------------------------

		if HUDHive.Settings.XPBarEnabled then

		   	local PanelXPBar = vgui.Create("DPanel", HUDHive.PanelXPMain)
			PanelXPBar:SetSize(HUDHive.PanelXPMain:GetWide(), 15)
			PanelXPBar:SetPos(0, HUDHive.PanelXPMain:GetTall() - 15)
			PanelXPBar.Paint = function(self, w, h) 

				local levelBarW = HUDHive.PanelXPMain:GetWide()
				local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
				local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
				local expFormat = 0
				local calcXP = 0
				local calcLevelProgress = 0

				if LevelSystemConfiguration then
					local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
					calcXP = xpPercent * 100
					calcXP = math.Round(calcXP)
					expFormat = math.Clamp(calcXP, 0, 99)
					calcLevelProgress = expFormat / 100
				elseif DARKRP_LVL_SYSTEM then
					local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
					if not formatPlayerlevel then return end
					playerXP = math.floor(playerXP)
					calcXP = (playerXP*100/formatPlayerlevel) or 0
					expFormat = math.Clamp(calcXP, 0, 99)
					calcLevelProgress = expFormat / 100
				end

				surface.SetDrawColor(HUDHive.Settings.XPBarBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				draw.RoundedBox(0, 0, 0, math.Clamp( levelBarW * calcLevelProgress, 0, levelBarW ), h, HUDHive.Settings.XPBarProgressColor)
				surface.SetDrawColor(Color(10,10,10,66))
				surface.DrawRect(0, 9, math.Clamp( levelBarW * calcLevelProgress, 0, levelBarW ), h)

				draw.HHOutlinedBoxThick( 0, 0, w, h, 1, HUDHive.Settings.XPBarOutlineColor )

			end

			local LabelBlockName = vgui.Create("DLabel", PanelXPBar)
			LabelBlockName:Dock(LEFT)
			LabelBlockName:DockMargin(3,2,2,1)
			LabelBlockName:SetWide(250)
			LabelBlockName:SetFont("HHFontBlockInfo")
			LabelBlockName:SetText("")
	   		LabelBlockName.Paint = function(self, w, h)
				LabelBlockName:SetText("XP")
			end

			local LabelBlockNameR = vgui.Create("DLabel", PanelXPBar)
			LabelBlockNameR:Dock(RIGHT)
			LabelBlockNameR:DockMargin(3,2,2,1)
			LabelBlockNameR:SetWide(50)
			LabelBlockNameR:SetFont("HHFontBlockInfo")
			LabelBlockNameR:SetText("")
			LabelBlockNameR:SetContentAlignment(6)
	   		LabelBlockNameR.Paint = function(self, w, h)

				local playerLevel = LocalPlayer():getDarkRPVar('level') or LocalPlayer():getDarkRPVar('lvl') or 0
				local playerXP = LocalPlayer():getDarkRPVar('xp') or 0
				local expFormat = 0
				local calcXP = 0
				local getBlockData = 0

				if LevelSystemConfiguration then
					local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
					calcXP = xpPercent * 100
					calcXP = math.Round(calcXP)
					expFormat = math.Clamp(calcXP, 0, 99)
				elseif DARKRP_LVL_SYSTEM then
					local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
					if not formatPlayerlevel then return end
					playerXP = math.floor(playerXP)
					calcXP = (playerXP*100/formatPlayerlevel) or 0
					expFormat = math.floor(calcXP)
				end

				LabelBlockNameR:SetText(expFormat .. "%")
			end

		end

	end

	-----------------------------------------------------------------
	-- [ AGENDA PANEL ]
	-----------------------------------------------------------------

	HUDHive.PanelAgendaMain = vgui.Create("DPanel")
	HUDHive.PanelAgendaMain:SetSize(300, 165)
	HUDHive.PanelAgendaMain:SetPos(5, 5)
	if not HUDHive.Settings.AgendaEnabled then 
		HUDHive.PanelAgendaMain:SetVisible(false)
	end
	HUDHive.PanelAgendaMain:ParentToHUD()
	HUDHive.PanelAgendaMain.Paint = function(self, w, h) 
		if not HUDHive.Settings.BackgroundsEnable and HUDHive.PanelAgendaMain:IsVisible() then
			DrawBlurPanel(self)
			draw.RoundedBox(3, 0, 0, w, h, HUDHive.Settings.BackgroundColorSolid )
		end
	end

	-----------------------------------------------------------------
	-- [ HTML BACKGROUND SUPPORT ]
	-----------------------------------------------------------------

	if HUDHive.Settings.BackgroundsEnable then

	    local DHTMLAgendaBackground = vgui.Create("DHTML", HUDHive.PanelAgendaMain)
	    DHTMLAgendaBackground:SetSize(ScrW(), ScrH())
	    DHTMLAgendaBackground:SetScrollbars(false)
	    DHTMLAgendaBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsAgenda) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLAgendaBackground.Paint = function(self, w, h) end

	end

   	local PanelAgendaContainer = vgui.Create("DPanel", HUDHive.PanelAgendaMain)
	PanelAgendaContainer:SetSize(HUDHive.PanelAgendaMain:GetWide(), HUDHive.PanelAgendaMain:GetTall())
	PanelAgendaContainer.Paint = function(self, w, h) end

	local LabelAgendaContext = vgui.Create("DLabel", PanelAgendaContainer)
	LabelAgendaContext:Dock(LEFT)
	LabelAgendaContext:DockMargin(3,2,2,7)
	LabelAgendaContext:SetWide(HUDHive.PanelAgendaMain:GetWide())
	LabelAgendaContext:SetText("")
	LabelAgendaContext.Paint = function(self, w, h)

		surface.SetDrawColor(HUDHive.Settings.AgendaIconColor)
		surface.SetMaterial(ImageAgenda)
		surface.DrawTexturedRect(5, 5, 24, 24)

		local fetchAgenda = LocalPlayer():getAgendaTable()
		if not fetchAgenda then return end

		agendaTitle = string.upper(fetchAgenda.Title)

		agendaText = DarkRP.textWrap((LocalPlayer():getDarkRPVar("agenda") or ""):gsub("//", "\n"):gsub("\\n", "\n"), "HHFontAgendaContent", HUDHive.PanelAgendaMain:GetWide() - 50)

		local positionYAgenda = 4
		if not HUDHive.Settings.CustomFontsEnabled then
			positionYAgenda = 8
		end

		draw.DrawText(agendaTitle, "HHFontAgendaTitle", 35, positionYAgenda, HUDHive.Settings.AgendaTitleTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
		draw.DrawText(agendaText, "HHFontAgendaContent", 35, 34, HUDHive.Settings.AgendaContentTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

	end

	-----------------------------------------------------------------
	-- [ LOCKDOWN PANEL ]
	-----------------------------------------------------------------

	HUDHive.PanelLockdownMain = vgui.Create("DPanel")
	HUDHive.PanelLockdownMain:SetSize(250, 110)
	HUDHive.PanelLockdownMain:SetPos(ScrW() - HUDHive.PanelLockdownMain:GetWide() - 5, ScrH() / 2)
	HUDHive.PanelLockdownMain:ParentToHUD()
	HUDHive.PanelLockdownMain.Paint = function(self, w, h) 
		if not HUDHive.Settings.BackgroundsEnable then
			DrawBlurPanel(self)
		end
	end

	if HUDHive.Settings.BackgroundsEnable then

	    local DHTMLLockdownBackground = vgui.Create("DHTML", HUDHive.PanelLockdownMain)
	    DHTMLLockdownBackground:SetSize(ScrW(), ScrH())
	    DHTMLLockdownBackground:SetScrollbars(false)
	    DHTMLLockdownBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsOther) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLLockdownBackground.Paint = function(self, w, h) end

	end

   	local PanelLockdownContainer = vgui.Create("DPanel", HUDHive.PanelLockdownMain)
	PanelLockdownContainer:SetSize(HUDHive.PanelLockdownMain:GetWide(), HUDHive.PanelLockdownMain:GetTall())
	PanelLockdownContainer.Paint = function(self, w, h) 

		local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )
		draw.RoundedBox(0, 0, 0, w, h, Color(15,15,15,200))

		local ImageHeight = 6

		local TextHeight = 2
		if not HUDHive.Settings.CustomFontsEnabled then
			TextHeight = 7
		end

		if HUDHive.Settings.XPBoxLeftShowIcon then
			local ImageLeveling = Material(HUDHive.Settings.LockdownIcon, "noclamp smooth")
			surface.SetDrawColor(doPulse, doPulse, 0, 255)
			surface.SetMaterial(ImageLeveling)
			surface.DrawTexturedRect(HUDHive.PanelLockdownMain:GetWide() - 20, ImageHeight, 17, 17)
		end

		local lockdownText = DarkRP.textWrap((HUDHive.Settings.LockdownBoxText or ""):gsub("//", "\n"):gsub("\\n", "\n"), "HHFontLockdownMessage", HUDHive.PanelLockdownMain:GetWide() - 10)

		draw.DrawText(string.upper(HUDHive.Language.lockdown_active), "HHFontLockdownTitle", 5, TextHeight, HUDHive.Settings.XPBoxLeftLevelTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

		surface.SetDrawColor(Color(255,255,255,200))
		surface.DrawRect(5, 27, w - 10, 2)

		draw.DrawText(lockdownText, "HHFontLockdownMessage", 5, 40, HUDHive.Settings.AgendaTitleTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

	end

	-----------------------------------------------------------------
	-- [ WANTED PANEL ]
	-----------------------------------------------------------------

	HUDHive.PanelWantedMain = vgui.Create("DPanel")
	HUDHive.PanelWantedMain:SetSize(250, 110)
	HUDHive.PanelWantedMain:SetPos(ScrW() - HUDHive.PanelWantedMain:GetWide() - 5, ScrH() / 2 - HUDHive.PanelWantedMain:GetTall() - 5)
	HUDHive.PanelWantedMain:ParentToHUD()
	HUDHive.PanelWantedMain.Paint = function(self, w, h) 
		if not HUDHive.Settings.BackgroundsEnable then
			DrawBlurPanel(self)
		end
	end

	if HUDHive.Settings.BackgroundsEnable then

	    local DHTMLWantedBackground = vgui.Create("DHTML", HUDHive.PanelWantedMain)
	    DHTMLWantedBackground:SetSize(ScrW(), ScrH())
	    DHTMLWantedBackground:SetScrollbars(false)
	    DHTMLWantedBackground:SetHTML([[
	        <body style="overflow: hidden; height: auto; width: auto;">
	            <img src="]] .. table.Random(HUDHive.Settings.BackgroundsOther) .. [[" style="position: absolute; height: auto; width: auto; top: 0%; left: 0%; margin: auto;">
	        </body>
	    ]])
	    DHTMLWantedBackground.Paint = function(self, w, h) end

	end

   	local PanelWantedContainer = vgui.Create("DPanel", HUDHive.PanelWantedMain)
	PanelWantedContainer:SetSize(HUDHive.PanelWantedMain:GetWide(), HUDHive.PanelWantedMain:GetTall())
	PanelWantedContainer.Paint = function(self, w, h) 

		local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )
		draw.RoundedBox(0, 0, 0, w, h, Color(15, 15, 15, 200))

		local ImageHeight = 6
		local TextHeight = 2
		if not HUDHive.Settings.CustomFontsEnabled then
			TextHeight = 7
		end

		if HUDHive.Settings.XPBoxLeftShowIcon then
			local ImageLeveling = Material(HUDHive.Settings.WantedBoxIcon, "noclamp smooth")
			surface.SetDrawColor(doPulse, doPulse, 0, 255)
			surface.SetMaterial(ImageLeveling)
			surface.DrawTexturedRect(HUDHive.PanelLockdownMain:GetWide() - 20, ImageHeight, 17, 17)
		end

		local wantedReasonText = DarkRP.getPhrase("wanted", tostring(LocalPlayer():getDarkRPVar("wantedReason")))

		draw.DrawText(string.upper(HUDHive.Language.wanted), "HHFontLockdownTitle", 5, TextHeight, HUDHive.Settings.XPBoxLeftLevelTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

		surface.SetDrawColor(Color(255,255,255,200))
		surface.DrawRect(5, 27, w - 10, 2)

		draw.DrawText(wantedReasonText, "HHFontLockdownMessage", 5, 40, HUDHive.Settings.AgendaTitleTextColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

	end

	hook.Add("Tick", "HUDHiveDoTick", function()

		if GetConVarNumber("hudhive_hide") == 1 then
			if IsValid(HUDHive.PanelMain) then HUDHive.PanelMain:SetVisible(false) end
			if IsValid(HUDHive.PanelAmmoMain) then HUDHive.PanelAmmoMain:SetVisible(false) end
			if IsValid(HUDHive.PanelAgendaMain) then HUDHive.PanelAgendaMain:SetVisible(false) end
			if IsValid(HUDHive.PanelLockdownMain) then HUDHive.PanelLockdownMain:SetVisible(false) end
			if IsValid(HUDHive.PanelWantedMain) then HUDHive.PanelWantedMain:SetVisible(false) end
			if IsValid(HUDHive.PanelXPMain) then HUDHive.PanelXPMain:SetVisible(false) end
			if IsValid(HUDHive.PanelUTime) then HUDHive.PanelUTime:SetVisible(false) end
			return
		else
			if IsValid(HUDHive.PanelMain) and HUDHive.Settings.MainEnabled then HUDHive.PanelMain:SetVisible(true) end
		end

		if IsValid(HUDHive.PanelUTime) and HUDHive.Settings.UTimeEnabled and utimecheck then
			local uTimeConvert
			local uTimeLangType
			local uTimeResult
			local uTimeCalc
			if HUDHive.Settings.UTimeTimeType == "days" then
				uTimeConvert = "86400"
				if HUDHive.Settings.UTimeType == "total" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeTotalTime() / uTimeConvert )
				elseif HUDHive.Settings.UTimeType == "session" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeSessionTime() / uTimeConvert )
				end
				if uTimeCalc < 2 then
					uTimeLangType = HUDHive.Language.day
				else
					uTimeLangType = HUDHive.Language.days
				end
				uTimeResult = uTimeCalc .. " " .. uTimeLangType
			elseif HUDHive.Settings.UTimeTimeType == "hours" then
				uTimeConvert = "3600"
				if HUDHive.Settings.UTimeType == "total" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeTotalTime() / uTimeConvert )
				elseif HUDHive.Settings.UTimeType == "session" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeSessionTime() / uTimeConvert )
				end
				if uTimeCalc < 2 then
					uTimeLangType = HUDHive.Language.hour
				else
					uTimeLangType = HUDHive.Language.hours
				end
				uTimeResult = uTimeCalc .. " " .. uTimeLangType
			elseif HUDHive.Settings.UTimeTimeType == "minutes" then
				uTimeConvert = "60"
				if HUDHive.Settings.UTimeType == "total" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeTotalTime() / uTimeConvert )
				elseif HUDHive.Settings.UTimeType == "session" then
					uTimeCalc = math.floor( LocalPlayer():GetUTimeSessionTime() / uTimeConvert )
				end
				if uTimeCalc < 2 then
					uTimeLangType = HUDHive.Language.minute
				else
					uTimeLangType = HUDHive.Language.minutes
				end
				uTimeResult = uTimeCalc .. " " .. uTimeLangType
			else
				if HUDHive.Settings.UTimeType == "total" then
					uTimeConvert = AriviaTimeConvert( LocalPlayer():GetUTime() + CurTime() - LocalPlayer():GetUTimeStart() )
				elseif HUDHive.Settings.UTimeType == "session" then
					uTimeConvert = AriviaTimeConvert( CurTime() - LocalPlayer():GetUTimeStart() )
				end
				uTimeResult = uTimeConvert
			end

			LabelUTime:SetText(uTimeResult)
			LabelUTime:SizeToContents()
			
			if HUDHive.Settings.UTimeEnabled then
				HUDHive.PanelUTime:SetVisible(true)
			else
				HUDHive.PanelUTime:SetVisible(false)
			end

		end

		if not LocalPlayer():Alive() then 
			HUDHive.PanelAmmoMain:SetVisible(false)
			HUDHive.PanelXPMain:SetVisible(false)
			return
		elseif not HUDHive.Settings.XPEnabled then
			HUDHive.PanelXPMain:SetVisible(false)
		else
			HUDHive.PanelXPMain:SetVisible(true)
		end

		if HUDHive.Settings.MainPosition == 1 then
			HUDHive.PanelMain:SetPos(5, 5)
			HUDHive.PanelUTime:SetPos(20, 158)
		elseif HUDHive.Settings.MainPosition == 2 then
			HUDHive.PanelMain:SetPos(ScrW() - HUDHive.PanelMain:GetWide() - 5, 5)
			HUDHive.PanelUTime:SetPos(ScrW() - HUDHive.PanelMain:GetWide() + 10, 158)
		elseif HUDHive.Settings.MainPosition == 3 then
			HUDHive.PanelMain:SetPos(5, ScrH() - HUDHive.PanelMain:GetTall() - 5)
			HUDHive.PanelUTime:SetPos(20, ScrH() - HUDHive.PanelMain:GetTall() - 25)
		elseif HUDHive.Settings.MainPosition == 4 then
			HUDHive.PanelMain:SetPos(ScrW() - HUDHive.PanelMain:GetWide() - 5, ScrH() - HUDHive.PanelMain:GetTall() - 5)
			HUDHive.PanelUTime:SetPos(ScrW() - HUDHive.PanelMain:GetWide() + 10, ScrH() - HUDHive.PanelMain:GetTall() - 24)
		end

		if HUDHive.Settings.AgendaPosition == 1 then
			HUDHive.PanelAgendaMain:SetPos(5, 5)
		elseif HUDHive.Settings.AgendaPosition == 2 then
			HUDHive.PanelAgendaMain:SetPos(ScrW() - HUDHive.PanelAgendaMain:GetWide() - 5, 5)
		elseif HUDHive.Settings.AgendaPosition == 3 then
			HUDHive.PanelAgendaMain:SetPos(5, ScrH() - HUDHive.PanelAgendaMain:GetTall() - 5)
		elseif HUDHive.Settings.AgendaPosition == 4 then
			HUDHive.PanelAgendaMain:SetPos(ScrW() - HUDHive.PanelAgendaMain:GetWide() - 5, ScrH() - HUDHive.PanelAgendaMain:GetTall() - 5)
		end

		local PlayerWeapon = LocalPlayer():GetActiveWeapon()

		if !IsValid(PlayerWeapon) then 
			HUDHive.PanelAmmoMain:SetVisible(false)
			return
		end

		if HUDHive.Settings.XPAmmoPosition == 1 then
			HUDHive.PanelXPMain:SetPos(5, 5)
			if HUDHive.PanelXPMain:IsVisible() then
				HUDHive.PanelAmmoMain:SetPos(5, 45)
			else
				HUDHive.PanelAmmoMain:SetPos(5, 5)
			end
		elseif HUDHive.Settings.XPAmmoPosition == 2 then
			HUDHive.PanelXPMain:SetPos(ScrW() - HUDHive.PanelXPMain:GetWide() - 5, 5)
			if HUDHive.Settings.XPEnabled then
				HUDHive.PanelAmmoMain:SetPos(ScrW() - HUDHive.PanelAmmoMain:GetWide() - 5, 45)
			end
		elseif HUDHive.Settings.XPAmmoPosition == 3 then
			if HUDHive.PanelAmmoMain:IsVisible() then
				HUDHive.PanelXPMain:SetPos(5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 45)
			else
				HUDHive.PanelXPMain:SetPos(5, ScrH() - HUDHive.PanelXPMain:GetTall() - 5)
			end
			HUDHive.PanelAmmoMain:SetPos(5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 5)
		elseif HUDHive.Settings.XPAmmoPosition == 4 then
			if HUDHive.PanelAmmoMain:IsVisible() then
				HUDHive.PanelXPMain:SetPos(ScrW() - HUDHive.PanelXPMain:GetWide() - 5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 45)
			else
				HUDHive.PanelXPMain:SetPos(ScrW() - HUDHive.PanelXPMain:GetWide() - 5, ScrH() - HUDHive.PanelXPMain:GetTall() - 5)
			end
			HUDHive.PanelAmmoMain:SetPos(ScrW() - HUDHive.PanelXPMain:GetWide() - 5, ScrH() - HUDHive.PanelAmmoMain:GetTall() - 5)
		end

		local countAmmoTotal = LocalPlayer():GetAmmoCount(PlayerWeapon:GetPrimaryAmmoType() or "")
		local countAmmoClip = tonumber(PlayerWeapon:Clip1()) or nil

		if !WeaponAmmo[PlayerWeapon] or WeaponAmmo[PlayerWeapon] < countAmmoClip then WeaponAmmo[PlayerWeapon] = countAmmoClip end
		if !WeaponInfo[PlayerWeapon] or WeaponInfo[PlayerWeapon] < countAmmoTotal then WeaponInfo[PlayerWeapon] = countAmmoTotal end

		if (countAmmoClip == nil or countAmmoClip == -1) and (countAmmoTotal == 0 and WeaponInfo[PlayerWeapon] <= 0) or (countAmmoClip == 0 && countAmmoTotal == 0 and WeaponAmmo[PlayerWeapon] == 0) then
			HUDHive.PanelAmmoMain:SetVisible(false)
			return
		end

		if countAmmoClip >= 0 or (WeaponAmmo[PlayerWeapon] or -1) >= 0 then
			HUDHive.PanelAmmoBox_Right:SetVisible(true)
			HUDHive.PanelAmmoMain:SetWide(220)
			HUDHive.PanelAmmoBox_Left:SetWide(HUDHive.PanelAmmoMain:GetWide()/2-16+4)
		else
			HUDHive.PanelAmmoMain:SetWide(220)
			HUDHive.PanelAmmoBox_Left:SetWide(HUDHive.PanelAmmoMain:GetWide()/2-16+4)
		end
	
		if HUDHive.Settings.AmmoEnabled then
			HUDHive.PanelAmmoMain:SetVisible(true)
		end
		if LevelSystemConfiguration and HUDHive.Settings.XPEnabled then
			HUDHive.PanelXPMain:SetVisible(true)
		end

	end)

end

function HUDHive:Hide()
    local cmd = "1"
    if GetConVarNumber("hudhive_hide") == 1 then
        cmd = "0"
    end
    RunConsoleCommand("hudhive_hide", cmd)
end
concommand.Add("hudhive", HUDHive.Hide)

-----------------------------------------------------------------
-- [ NOTIFICATION SYSTEM ]
-----------------------------------------------------------------
-- The default one looks like crap, so we're going to modernize
-- it a bit. Simple clean boxes.
-----------------------------------------------------------------

local function NotificationSystem( str, type, length )

	local tablist = {}
	tablist.text 	= str
	tablist.recv 	= SysTime()
	tablist.len 	= length
	tablist.velx	= -5
	tablist.vely	= 0
	tablist.x		= ScrW() + 200
	tablist.y		= ScrH()
	tablist.a		= 255
	tablist.type	= type
	
	table.insert( HUDNotes, tablist )
	
	HUDNote_c = HUDNote_c + 1
	HUDNote_i = HUDNote_i + 1
	
end

local function DrawNotification( self, k, v, i )

	local H = ScrH() / 640
	local x = v.x - HUDHive.Settings.NotiBoxRightPos * H
	local y = v.y - HUDHive.Settings.NotiBoxHeightPos * H
	
	if ( !v.w ) then
		surface.SetFont( "HHFontNotificationTitle" )
		v.w, v.h = surface.GetTextSize( v.text )
	end
	
	local w = v.w
	local h = v.h
	
	w = w - 16
	h = h + 16

	local col = HUDHive.Settings.NotiBoxColorGeneric
	local textCol = HUDHive.Settings.NotiBoxTextColor
	
	surface.SetDrawColor( col.r, col.g, col.b, col.a )
	surface.DrawRect(x - w - h + 8, y - 8, w + h, h)
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.DrawRect(x - w - h + 8, y - 8, 3, h)

	draw.SimpleText( v.text, "HHFontNotificationTitle", x+1, y+1, Color(0,0,0,v.a*0.8), TEXT_ALIGN_RIGHT )
	draw.SimpleText( v.text, "HHFontNotificationTitle", x-1, y-1, Color(0,0,0,v.a*0.5), TEXT_ALIGN_RIGHT )
	draw.SimpleText( v.text, "HHFontNotificationTitle", x+1, y-1, Color(0,0,0,v.a*0.6), TEXT_ALIGN_RIGHT )
	draw.SimpleText( v.text, "HHFontNotificationTitle", x-1, y+1, Color(0,0,0,v.a*0.6), TEXT_ALIGN_RIGHT )
	draw.SimpleText( v.text, "HHFontNotificationTitle", x, y, Color(textCol.r,textCol.g,textCol.b,v.a), TEXT_ALIGN_RIGHT )
	
	local ideal_y = ScrH() - (HUDNote_c - i) * (h + 4)
	local ideal_x = ScrW()
	
	local timeleft = v.len - (SysTime() - v.recv)
	
	if ( timeleft < 0.8  ) then ideal_x = ScrW() - 10 end
	if ( timeleft < 0.5  ) then ideal_x = ScrW() + w * 2 end
	
	local spd = RealFrameTime() * 15
	
	v.y = v.y + v.vely * spd
	v.x = v.x + v.velx * spd
	
	local dist = ideal_y - v.y
	v.vely = v.vely + dist * spd * 1
	if (math.abs(dist) < 2 && math.abs(v.vely) < 0.1) then v.vely = 0 end
	local dist = ideal_x - v.x
	v.velx = v.velx + dist * spd * 1
	if (math.abs(dist) < 2 && math.abs(v.velx) < 0.1) then v.velx = 0 end
	
	v.velx = v.velx * (0.90 - RealFrameTime() * 8 )
	v.vely = v.vely * (0.90 - RealFrameTime() * 8 )

end

local function PaintNotes()
	if ( !HUDNotes ) then return end
		
	local i = 0
	for k, v in pairs( HUDNotes ) do
		if ( v != 0 ) then
			i = i + 1
			DrawNotification( self, k, v, i)		
		end
	end
	
	for k, v in pairs( HUDNotes ) do
		if ( v != 0 && v.recv + v.len < SysTime() ) then
			HUDNotes[ k ] = 0
			HUDNote_c = HUDNote_c - 1
			if (HUDNote_c == 0) then HUDNotes = {} end
		end
	end
end
hook.Add( "HUDPaint", "PaintNotes", PaintNotes )

-----------------------------------------------------------------
-- [ ENTITY DISPLAY ]
-----------------------------------------------------------------
-- Display above the player's head. Includes the name, job, 
-- wanted level, if player has gun license, health and armor 
-- bars.
-----------------------------------------------------------------

local function DrawEntityDisplay()

	local shootPos = LocalPlayer():GetShootPos()
	local aimVec = LocalPlayer():GetAimVector()

	for k, ply in pairs(player.GetAll()) do
		if ply == LocalPlayer() or not ply:Alive() or ply:GetNoDraw() then continue end
		local playerColor = ply:GetColor()
		if playerColor.a != 255 then continue end
		local hisPos = ply:GetShootPos()

		if hisPos:DistToSqr(shootPos) < HUDHive.Settings.HeadHudDrawDistance then
			local PlayerPosition = hisPos - shootPos
			local unitPos = PlayerPosition:GetNormalized()
			if unitPos:Dot(aimVec) > 0.35 then
				local fetchTrace = util.QuickTrace(shootPos, PlayerPosition, LocalPlayer())
				if fetchTrace.Hit and fetchTrace.Entity != ply then 
					return 
				end

				local PlayerName = string.upper(ply:Name())
				local PlayerTeam = string.upper(ply:Team())
				local PlayerJob = string.upper(ply:getDarkRPVar("job") or "")
				local PlayerHealth = ply:Health()
				local PlayerArmor = ply:Armor()
				local PlayerEyePos = ply:EyePos()
				local PlayerTeamcolor = team.GetColor( ply:Team() ) 
				local PlayerPosition = ( PlayerEyePos+Vector( 0, 0, 5 ) ):ToScreen()

				PlayerPosition.y = PlayerPosition.y - HUDHive.Settings.HeadHudPositionVertical or 100

				if HUDHive.Settings.HeadHudEnabled then
					local w, h = 110, 13

					if HUDHive.Settings.HeadHudShowJob then
						draw.DrawText(PlayerJob, "HHFontHeadHudJob", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudJobHPos, HUDHive.Settings.HeadHudJobTextColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end

					if HUDHive.Settings.HeadHudPlayernameEnabled then
						draw.DrawText(PlayerName, "HHFontHeadHudName", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudPlayernameHPos, Color(PlayerTeamcolor.r,PlayerTeamcolor.g,PlayerTeamcolor.b), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end

					if not HUDHive.Settings.HeadHudShowNicknames and HUDHive.Settings.HeadHudShowUserGroup and HUDHive.Settings.UserGroupTitles[ply:GetUserGroup()] then
						draw.DrawText(string.upper(HUDHive.Settings.UserGroupTitles[ply:GetUserGroup()]), "HHFontHeadHudRank", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudNicknamesHPos, HUDHive.Settings.UserGroupColors[ply:GetUserGroup()], TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					elseif HUDHive.Settings.HeadHudShowNicknames and HUDHive.Settings.NicknameTitles[ply:SteamID()] and not HUDHive.Settings.HeadHudShowUserGroup then
						draw.DrawText(string.upper(HUDHive.Settings.NicknameTitles[ply:SteamID()]), "HHFontHeadHudRank", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudNicknamesHPos, HUDHive.Settings.NicknameColors[ply:SteamID()], TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end

					-----------------------------------------------------------------
					-- Compatibility with https://scriptfodder.com/scripts/view/393/
					-----------------------------------------------------------------

					if HUDHive.Settings.HeadHudOrganizationsEnabled and ply:GetNWString("orgName") != "" then
						local organizationColor = ORGS_Config.nameColor or HUDHive.Settings.HeadHudOrganizationsDefaultColor
						draw.DrawText(string.upper(ply:GetNWString("orgName")), "HHFontHeadHudOrganization", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudOrganizationsHPos, organizationColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					elseif HUDHive.Settings.HeadHudOrganizationsEnabled and C_CREWS then
						draw.DrawText(string.upper(ply:GetCrew() or "No Gang"), "HHFontHeadHudOrganization", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudOrganizationsHPos, organizationColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end

					local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )

					if ply:isWanted() then
						surface.SetDrawColor(Color( doPulse, doPulse, 0, 255 ))
					else
						surface.SetDrawColor(Color( 0, 0, 0, 255 ))
					end
					surface.SetMaterial(ImageWantedIndicator)
					surface.DrawTexturedRect(PlayerPosition.x - 75, PlayerPosition.y + 75, 16, 16)

					if ply:getDarkRPVar("HasGunlicense") then
						surface.SetDrawColor(HUDHive.Settings.HeadHudGunlicenseIconColor)
					else
						surface.SetDrawColor(Color( 0, 0, 0, 255 ))
					end
					surface.SetMaterial(ImageWeaponLicense)
					surface.DrawTexturedRect(PlayerPosition.x + 60, PlayerPosition.y + 75, 16, 16)

					if HUDHive.Settings.HeadHudXPBarEnabled and (DARKRP_LVL_SYSTEM or LevelSystemConfiguration or DARKRP_LEVELING_ENTRESTRICT) then

						local playerLevel = ply:getDarkRPVar('level') or ply:getDarkRPVar('lvl') or ply:GetNWInt("lvl") or 0
						local playerXP = ply:getDarkRPVar('xp') or ply:GetNWInt("exp") or 0
						local expFormat = 0
						local calcXP = 0
						local EXP2 = 0
						local getBlockData
						if LevelSystemConfiguration then
							local xpPercent = ( ( playerXP or 0 ) / ( ( ( 10 + ( ( ( playerLevel or 1 ) * ( ( playerLevel or 1 ) + 1 ) * 90 ) ) ) ) * LevelSystemConfiguration.XPMult or 1.0 ) )
							calcXP = xpPercent * 100
							calcXP = math.Round(calcXP)
							expFormat = math.Clamp(calcXP, 0, 99)
							getBlockData = expFormat
						elseif DARKRP_LVL_SYSTEM then
							local formatPlayerlevel = DARKRP_LVL_SYSTEM["XP"][tonumber(playerLevel)]
							if not formatPlayerlevel then return end
							playerXP = math.floor(playerXP)
							calcXP = (playerXP*100/formatPlayerlevel) or 0
							expFormat = math.floor(calcXP)
							getBlockData = expFormat
						elseif DARKRP_LEVELING_ENTRESTRICT then
							local maxexp = ExpFormula(ply:GetNWInt("lvl",0))
							playerXP = math.floor(playerXP)
							calcXP = (playerXP*100/maxexp) or 0
							expFormat = math.Round(calcXP)
							getBlockData = expFormat
						end

						surface.SetDrawColor(HUDHive.Settings.HeadHudXPBarBGColor)
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudXPHPos, w, h)
						surface.SetDrawColor(HUDHive.Settings.HeadHudXPBarColor)
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudXPHPos, w * math.Clamp(getBlockData / 100, 0, 1), h)
						surface.SetDrawColor(Color( 10, 10, 10, 66 ))
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudXPHPos, w * math.Clamp(getBlockData / 100, 0, 1), 7)

						if HUDHive.Settings.HeadHudShowXPNumber then
							draw.DrawText(getBlockData .. "%", "HHFontHeadHudHealth", PlayerPosition.x - 52, PlayerPosition.y + HUDHive.Settings.HeadHudXPHPos - 1, HUDHive.Settings.HeadHudXPNumberColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
							draw.DrawText(string.upper(HUDHive.Language.level) .. " " .. playerLevel, "HHFontHeadHudHealth", PlayerPosition.x + 52, PlayerPosition.y + HUDHive.Settings.HeadHudXPHPos - 1, HUDHive.Settings.HeadHudXPNumberColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
						end

					end

					if HUDHive.Settings.HeadHudHealthBarEnabled then
						surface.SetDrawColor(HUDHive.Settings.HeadHudHealthBarBGColor)
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudHealthHPos, w, h)
						surface.SetDrawColor(HUDHive.Settings.HeadHudHealthBarColor)
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudHealthHPos, w * math.Clamp(ply:Health() / 100, 0, 1), h)
						surface.SetDrawColor(Color( 10, 10, 10, 66 ))
						surface.DrawRect(PlayerPosition.x - w / 2, PlayerPosition.y + HUDHive.Settings.HeadHudHealthHPos, w * math.Clamp(ply:Health() / 100, 0, 1), 7)

						local YOffset = 3
						if not HUDHive.Settings.CustomFontsEnabled then
							YOffset = 1
						end

						if HUDHive.Settings.HeadHudShowHealthNumber then
							draw.DrawText(ply:Health(), "HHFontHeadHudHealth", PlayerPosition.x, PlayerPosition.y + HUDHive.Settings.HeadHudHealthHPos - YOffset, HUDHive.Settings.HeadHudHealthNumberColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						end

					end

					if HUDHive.Settings.HeadHudArmorBarEnabled then 
						surface.SetDrawColor(HUDHive.Settings.HeadHudArmorBarBGColor)
						surface.DrawRect(PlayerPosition.x - w/2, PlayerPosition.y + HUDHive.Settings.HeadHudArmorHPos, w * math.Clamp(PlayerArmor/100,0,1), 4)
					end

				else

	                local pos = ply:EyePos()

	                pos.z = pos.z + 10
	                pos = pos:ToScreen()
	                if not ply:getDarkRPVar("wanted") then
	                    pos.y = pos.y - 50
	                end

	                if GAMEMODE.Config.showname then
	                    local nick, plyTeam = PlayerName, PlayerTeam
	                    draw.DrawNonParsedText(nick, "DarkRPHUD2", pos.x + 1, pos.y + 1, colors.black, 1)
	                    draw.DrawNonParsedText(nick, "DarkRPHUD2", pos.x, pos.y, RPExtraTeams[plyTeam] and RPExtraTeams[plyTeam].color or team.GetColor(plyTeam) , 1)
	                end

	                if GAMEMODE.Config.showhealth then
	                    local health = DarkRP.getPhrase("health", ply:Health())
	                    draw.DrawNonParsedText(health, "DarkRPHUD2", pos.x + 1, pos.y + 21, colors.black, 1)
	                    draw.DrawNonParsedText(health, "DarkRPHUD2", pos.x, pos.y + 20, colors.white1, 1)
	                end

	                if GAMEMODE.Config.showjob then
	                    local teamname = ply:getDarkRPVar("job") or team.GetName(ply:Team())
	                    draw.DrawNonParsedText(teamname, "DarkRPHUD2", pos.x + 1, pos.y + 41, colors.black, 1)
	                    draw.DrawNonParsedText(teamname, "DarkRPHUD2", pos.x, pos.y + 40, colors.white1, 1)
	                end

	                if ply:getDarkRPVar("HasGunlicense") then
	                    surface.SetMaterial(Page)
	                    surface.SetDrawColor(255,255,255,255)
	                    surface.DrawTexturedRect(pos.x-16, pos.y + 60, 32, 32)
	                end

				end

			end
		end
	end

	local trace = LocalPlayer():GetEyeTrace()

	if IsValid(trace.Entity) and trace.Entity:isKeysOwnable() and trace.Entity:GetPos():DistToSqr(LocalPlayer():GetPos()) < 40000 then
		trace.Entity:drawOwnableInfo()
	end

end


-----------------------------------------------------------------
-- [ ADMINTELL FUNCTION ]
-----------------------------------------------------------------

local function AdminTellDispatch(Message)

	local textYOffset = 145
	if not HUDHive.Settings.CustomFontsEnabled then
		textYOffset = 130
	end

	if HUDHive.Settings.AdminTellEnabled then

		local AdminTellBoxW = 220

		draw.RoundedBox(0, ScrW() - 225, 145, AdminTellBoxW, 100, HUDHive.Settings.AdminTellBoxPrimaryColor)
		draw.RoundedBox(0, ScrW() - 225, 145, AdminTellBoxW, 25, HUDHive.Settings.AdminTellBoxSecondaryColor)

		local admintellText = DarkRP.textWrap((Message or ""):gsub("//", "\n"):gsub("\\n", "\n"), "HHFontAnnouncementMessage", AdminTellBoxW - 10)

		draw.DrawNonParsedText(string.upper(HUDHive.Language.announcement), "HHFontAnnouncementTitle", ScrW() - AdminTellBoxW, textYOffset, HUDHive.Settings.AdminTellTitleColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
		draw.DrawNonParsedText(admintellText or HUDHive.Language.no_message_available, "HHFontAnnouncementMessage", ScrW() - AdminTellBoxW, 175, HUDHive.Settings.AdminTellMessageColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

	else        

		draw.RoundedBox(4, 10, 10, ScrW() - 20, 110, colors.darkblack)

        draw.DrawNonParsedText(DarkRP.getPhrase("listen_up"), "GModToolName", ScrW() / 2 + 10, 10, colors.white, 1)
        draw.DrawNonParsedText(Message, "ChatFont", ScrW() / 2 + 10, 90, colors.brightred, 1)

	end

end

local Arrested = function() end

usermessage.Hook("GotArrested", function(msg)
    local ArrestedStart = CurTime()
    local ArrestedExpires = msg:ReadFloat()

    Arrested = function()
	    if CurTime() - ArrestedStart <= ArrestedExpires and LocalPlayer():getDarkRPVar("Arrested") then
			draw.RoundedBox(0, 5, ScrH() / 2, 220, 55, HUDHive.Settings.AdminTellBoxPrimaryColor)
			draw.RoundedBox(0, 5, ScrH() / 2, 220, 25, HUDHive.Settings.AdminTellBoxSecondaryColor)
			draw.DrawNonParsedText(string.upper(HUDHive.Language.arrested), "HHFontArrestedTitle", 10, ScrH() / 2, HUDHive.Settings.AdminTellTitleColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
			draw.DrawNonParsedText(string.upper( DarkRP.getPhrase( "youre_arrested", math.ceil( ArrestedExpires - ( CurTime() - ArrestedStart ) ) ) ), "HHFontArrestedMessage", 10, ScrH() / 2 + 30, HUDHive.Settings.AdminTellMessageColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

			local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )
			if HUDHive.Settings.XPBoxLeftShowIcon then
				local ImageLeveling = Material(HUDHive.Settings.ArrestedIcon, "noclamp smooth")
				surface.SetDrawColor(doPulse, doPulse, 0, 255)
				surface.SetMaterial(ImageLeveling)
				surface.DrawTexturedRect(200, ScrH() / 2 + 2, 20, 20)
			end
		elseif not LocalPlayer():getDarkRPVar("Arrested") then
			Arrested = function() end
		end
    end
end)

-----------------------------------------------------------------
-- [ ADMINTELL ]
-----------------------------------------------------------------
-- System allows for sending messages to players.
-- /admintell playername message
-----------------------------------------------------------------

local AdminTell = function() end

usermessage.Hook("AdminTell", function(msg)
	timer.Destroy("DarkRP_AdminTell")
	local Message = msg:ReadString()

	AdminTell = function()
		AdminTellDispatch(Message)
	end

	timer.Create("DarkRP_AdminTell", HUDHive.Settings.AdminTellTimer or 10, 1, function()
		AdminTell = function() end
	end)
end)

-----------------------------------------------------------------
-- [ AGENDA CHECK ]
-----------------------------------------------------------------

local function IsAgenda()
	local fetchAgenda = LocalPlayer():getAgendaTable()
	local fetchAgendaContents = LocalPlayer():getDarkRPVar("agenda")

	if not IsValid(HUDHive.PanelAgendaMain) then return end
	if GetConVarNumber("hudhive_hide") == 1 then return end
	if not HUDHive.Settings.AgendaEnabled then return end

	if !fetchAgenda then
		HUDHive.PanelAgendaMain:SetVisible(false)
	else
		HUDHive.PanelAgendaMain:SetVisible(true)
	end

	if (!fetchAgendaContents or fetchAgendaContents == "") and HUDHive.Settings.AgendaHideIfEmpty then 
		HUDHive.PanelAgendaMain:SetVisible(false)
	end

end

-----------------------------------------------------------------
-- [ ARRESTED CHECK ]
-----------------------------------------------------------------

local function IsArrested()
	local chatboxXPOS, chatboxYPOS = chat.GetChatBoxPos()
	if GetConVarNumber("hudhive_hide") == 1 then return end
    if LocalPlayer():isWanted() and HUDHive.Settings.WantedNotiEnabled then
		if IsValid(HUDHive.PanelWantedMain) then HUDHive.PanelWantedMain:SetVisible(true) end
        local cin = (math.sin(CurTime()) + 1) / 2
        local chatBoxSize = math.floor(ScrH() / 4)
		draw.DrawNonParsedText("", "ScoreboardSubtitle", chatboxXPOS, chatboxYPOS + chatBoxSize, Color(cin * 255, 0, 255 - (cin * 255), 255), TEXT_ALIGN_LEFT)
	else
		if IsValid(HUDHive.PanelWantedMain) then HUDHive.PanelWantedMain:SetVisible(false) end
    end
end

-----------------------------------------------------------------
-- [ LOCKDOWN CHECK ]
-----------------------------------------------------------------

local function IsLockDown()
	local chatboxXPOS, chatboxYPOS = chat.GetChatBoxPos()
	if GetConVarNumber("hudhive_hide") == 1 then return end
    if HUDHive.Settings.LockdownNotiEnabled and GetGlobalBool("DarkRP_LockDown") then
		if IsValid(HUDHive.PanelLockdownMain) then HUDHive.PanelLockdownMain:SetVisible(true) end
        local cin = (math.sin(CurTime()) + 1) / 2
        local chatBoxSize = math.floor(ScrH() / 4)
		draw.DrawNonParsedText("", "ScoreboardSubtitle", chatboxXPOS, chatboxYPOS + chatBoxSize, Color(cin * 255, 0, 255 - (cin * 255), 255), TEXT_ALIGN_LEFT)
	else
		if IsValid(HUDHive.PanelLockdownMain) then HUDHive.PanelLockdownMain:SetVisible(false) end
    end
end

-----------------------------------------------------------------
-- [ LOAD IMPORTANT FUNCTIONS ]
-----------------------------------------------------------------
-- These functions control the differnt extra features including 
-- the agenda, arrest and lockdown notifications, etc.
-----------------------------------------------------------------

hook.Add("HUDPaint", "HUDHive.PanelMainEntityDisplay", function()
	IsAgenda()
	IsArrested()
	IsLockDown()
	DrawEntityDisplay()
    Arrested()
	AdminTell()
end)

hook.Add("InitPostEntity", "HUDHiveInit", function()

	local Arrested = function() end

	usermessage.Hook("GotArrested", function(msg)
	    local ArrestedStart = CurTime()
	    local ArrestedExpires = msg:ReadFloat()

	    Arrested = function()
		    if CurTime() - ArrestedStart <= ArrestedExpires and LocalPlayer():getDarkRPVar("Arrested") then
				draw.RoundedBox(0, 5, ScrH() / 2, 220, 55, HUDHive.Settings.AdminTellBoxPrimaryColor)
				draw.RoundedBox(0, 5, ScrH() / 2, 220, 25, HUDHive.Settings.AdminTellBoxSecondaryColor)
				draw.DrawNonParsedText(string.upper(HUDHive.Language.arrested), "HHFontArrestedTitle", 10, ScrH() / 2, HUDHive.Settings.AdminTellTitleColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
				draw.DrawNonParsedText(string.upper( DarkRP.getPhrase( "youre_arrested", math.ceil( ArrestedExpires - ( CurTime() - ArrestedStart ) ) ) ), "HHFontArrestedMessage", 10, ScrH() / 2 + 30, HUDHive.Settings.AdminTellMessageColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

				local doPulse = math.abs( math.sin(CurTime() * HUDHive.Settings.MainStatusPulseSpeed or 2) * 200 )
				if HUDHive.Settings.XPBoxLeftShowIcon then
					local ImageLeveling = Material(HUDHive.Settings.ArrestedIcon, "noclamp smooth")
					surface.SetDrawColor(doPulse, doPulse, 0, 255)
					surface.SetMaterial(ImageLeveling)
					surface.DrawTexturedRect(200, ScrH() / 2 + 2, 20, 20)
				end
			elseif not LocalPlayer():getDarkRPVar("Arrested") then
				Arrested = function() end
			end
	    end
	end)

	usermessage.Hook("AdminTell", function(msg)
		timer.Destroy("DarkRP_AdminTell")
		local Message = msg:ReadString()

		AdminTell = function()
			AdminTellDispatch(Message)
		end

		timer.Create("DarkRP_AdminTell", HUDHive.Settings.AdminTellTimer or 10, 1, function()
			AdminTell = function() end
		end)

	end)

	local function DisplayNotify(msg)
		local txt = msg:ReadString()
		NotificationSystem(txt, msg:ReadShort(), msg:ReadLong())
		surface.PlaySound("buttons/lightswitch2.wav")
	end
	usermessage.Hook("_Notify", DisplayNotify)

	if HUDHive.Settings.XPOriginalHudDisabled and LevelSystemConfiguration and LevelSystemConfiguration.EnableHUD then
		LevelSystemConfiguration.EnableHUD = false
	end

	if HUDHive.Settings.XPOriginalHudDisabled and DARKRP_LVL_SYSTEM and DARKRP_LVL_SYSTEM["SETTINGS"]["ALWAYS_SHOP_XP"] then
		DARKRP_LVL_SYSTEM["SETTINGS"]["ALWAYS_SHOP_XP"] = false
	end

	HUDHiveInitPanel()

end)

-----------------------------------------------------------------
-- [ REFRESH ]
-----------------------------------------------------------------

if IsValid(HUDHive.PanelMain) then HUDHiveInitPanel() end

-----------------------------------------------------------------
-- [ TICK -> INITIALIZE ]
-----------------------------------------------------------------

hook.Add("Tick", "HUDHiveTick", function()
	if not HUDHiveInit == true then
		HUDHiveInitPanel()
		HUDHiveInit = true
	end
end)

-----------------------------------------------------------------
-- [ HIDE HUD KEYBIND ]
-----------------------------------------------------------------

if HUDHive.Settings.HideHUDEnabled then
	
	local nextThink = 0
	HUDHive.MenuKey = HUDHive.Settings.HideHUDKey or KEY_F6
	hook.Add( "Think", "HUDHiveOpenKey", function()
		if nextThink > CurTime() then return end

		if input.IsKeyDown( HUDHive.MenuKey ) then
	        local cmd = "1"

	        if GetConVarNumber("hudhive_hide") == 1 then
	            cmd = "0"
	        end

	        RunConsoleCommand("hudhive_hide", cmd)
			nextThink = CurTime() + 0.5
		end

	end)

end
