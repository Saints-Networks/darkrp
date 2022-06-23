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

if HUDHive.Settings.CustomFontsEnabled then

surface.CreateFont("HHFontPlayernameText", {
    size = 32,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontJobText", {
    size = 26,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontBlockInfo", {
    size = 14,
    weight = 800,
    antialias = true,
    shadow = false,
    font = "Roboto"
})

surface.CreateFont("HHFontPlayerMoney", {
    size = 30,
    weight = 100,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontSalaryMoney", {
    size = 30,
    weight = 100,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontAmmoCount", {
    size = 60,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontAmmoType", {
    size = 30,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontXPInfo", {
    size = 30,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontAgendaTitle", {
    size = 30,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontAgendaContent", {
    size = 24,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontHeadHudName", {
    size = 21,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Oswald Light"
})

surface.CreateFont("HHFontHeadHudJob", {
    size = 30,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontHeadHudRank", {
    size = 26,
    weight = 300,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontHeadHudOrganization", {
    size = 30,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontHeadHudHealth", {
    size = 19,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontHeadHudWanted", {
    size = 26,
    weight = 400,
    antialias = true,
    shadow = false,
    font = "Teko Light"
})

surface.CreateFont("HHFontLockdownTitle", {
    size = 28,
    weight = 200,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontLockdownMessage", {
    size = 20,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Oswald Light"
})

surface.CreateFont("HHFontNotificationTitle", {
    size = 26,
    weight = 200,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontAnnouncementTitle", {
    size = 28,
    weight = 200,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontAnnouncementMessage", {
    size = 19,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Oswald Light"
})

surface.CreateFont("HHFontArrestedTitle", {
    size = 28,
    weight = 200,
    antialias = true,
    shadow = true,
    font = "Teko Light"
})

surface.CreateFont("HHFontArrestedMessage", {
    size = 18,
    weight = 400,
    antialias = true,
    shadow = true,
    font = "Oswald Light"
})

surface.CreateFont("HHFontUTime", {
    size = 14,
    weight = 700,
    antialias = true,
    shadow = true,
    font = "Roboto"
})

end