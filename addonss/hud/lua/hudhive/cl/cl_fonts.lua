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
-- [ FONTS ]
-----------------------------------------------------------------

if not HUDHive.Settings.CustomFontsEnabled then

surface.CreateFont("HHFontPlayernameText", {
    size = 20,
    weight = 700,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontJobText", {
    size = 14,
    weight = 700,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontBlockInfo", {
    size = 14,
    weight = 800,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontPlayerMoney", {
    size = 16,
    weight = 200,
    antialias = true,
    shadow = false,
    font = "Trebuchet18"
})

surface.CreateFont("HHFontSalaryMoney", {
    size = 16,
    weight = 200,
    antialias = true,
    shadow = false,
    font = "Trebuchet18"
})

surface.CreateFont("HHFontAmmoCount", {
    size = 36,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontAmmoType", {
    size = 16,
    weight = 600,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontXPInfo", {
    size = 20,
    weight = 700,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontAgendaTitle", {
    size = 17,
    weight = 800,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontAgendaContent", {
    size = 14,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontHeadHudName", {
    size = 15,
    weight = 700,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontHeadHudJob", {
    size = 16,
    weight = 600,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontHeadHudRank", {
    size = 20,
    weight = 700,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontHeadHudOrganization", {
    size = 20,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontHeadHudHealth", {
    size = 13,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontLockdownTitle", {
    size = 17,
    weight = 800,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontLockdownMessage", {
    size = 16,
    weight = 600,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontNotificationTitle", {
    size = 20,
    weight = 200,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontAnnouncementTitle", {
    size = 18,
    weight = 800,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontAnnouncementMessage", {
    size = 18,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontArrestedTitle", {
    size = 17,
    weight = 800,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontArrestedMessage", {
    size = 12,
    weight = 600,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

surface.CreateFont("HHFontUTime", {
    size = 12,
    weight = 600,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

end