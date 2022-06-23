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

-----------------------------------------------------------------
-- [ ABOUT / VERSION ]
-----------------------------------------------------------------

concommand.Add("hud_version", function(ply)
	DarkRP.notify( ply, 0, 10, "HudHive v" .. HUDHive.Script.Build .. " by " .. HUDHive.Script.Author)
end)

hook.Add("PlayerSay","HUDHive.Hud",function( ply, bind )

	local bind = string.lower( bind )

	if bind == "!hudhive" then
		DarkRP.notify( ply, 0, 10, "HudHive v" .. HUDHive.Script.Build .. " by " .. HUDHive.Script.Author)
	end

end)

-----------------------------------------------------------------
-- [ HIDE HUD CHAT COMMAND ]
-----------------------------------------------------------------

hook.Add("PlayerSay","HUDHive.Request",function( ply, text )
	local text = string.lower(text)
	if text == HUDHive.Settings.HideHUDCommand then
		ply:ConCommand("hudhive")
		return false
	end
end)