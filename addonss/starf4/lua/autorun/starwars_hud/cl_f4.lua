if !CLIENT then return end
--------
StarHUD = StarHUD or {}
StarHUD.F4 = StarHUD.F4 or {}
--Buttons
StarHUD.F4.Buttons = {
[1] = {Name = "Jobs", Mat = Material("starhud/derma/icons/atom_symbol.png"), Func = function(f4) StarHUD.F4.Jobs(f4) end},
[2] = {Name = "Weapons", Mat = Material("starhud/derma/icons/shield_symbol.png"), Func = function(f4) StarHUD.F4.Weapons(f4) end},
[3] = {Name = "Ammo", Mat = Material("starhud/derma/icons/ammo.png"), Func = function(f4) StarHUD.F4.Ammo(f4) end},
[4] = {Name = "Shipments", Mat = Material("starhud/derma/icons/box.png"), Func = function(f4) StarHUD.F4.Shipments(f4) end},
[5] = {Name = "Entities", Mat = Material("starhud/derma/icons/cog_symbol.png"), Func = function(f4) StarHUD.F4.Entity(f4) end},
}
--Materials
StarHUD.F4.Base = Material("starhud/derma/background.png")
StarHUD.F4.ButtonMat = Material("starhud/derma/options_tab_normal.png")
StarHUD.F4.ButtonHov = Material("starhud/derma/options_tab_hovered.png")
StarHUD.F4.ButtonSel = Material("starhud/derma/options_tab_active.png")
StarHUD.F4.Box = Material("starhud/derma/item_frame.png")
StarHUD.F4.BoxBack = Material("starhud/derma/common_grade.png")
StarHUD.F4.Round = Material("starhud/derma/common_carving.png")
StarHUD.F4.Form = Material("starhud/derma/tab_bar_no_segments.png")
StarHUD.F4.FormSel = Material("starhud/derma/tab_bar_sel.png")
StarHUD.F4.Price = Material("starhud/derma/price_symbol.png")
StarHUD.F4.ScrollBack = Material("starhud/derma/scroll/options_rail.png")
StarHUD.F4.ScrollButUp = Material("starhud/derma/scroll/up_n.png")
StarHUD.F4.ScrollButUpH = Material("starhud/derma/scroll/up_h.png")
StarHUD.F4.ScrollButDown = Material("starhud/derma/scroll/down_n.png")
StarHUD.F4.ScrollButDownH = Material("starhud/derma/scroll/down_h.png")
StarHUD.F4.ScrollBar = Material("starhud/derma/scroll/scroll_mp_n.png")
StarHUD.F4.ScrollBarH = Material("starhud/derma/scroll/scroll_mp_a.png")
StarHUD.F4.JobBack = Material("starhud/derma/back.png")
StarHUD.F4.JobBlock = Material("starhud/derma/label_form.png")
StarHUD.F4.DescMat = Material("starhud/derma/caving_bg.png")
StarHUD.F4.JobBut = Material("starhud/derma/passive_background.png")
StarHUD.F4.JobButH = Material("starhud/derma/slected_background.png")
StarHUD.F4.JobBackFrame = Material("starhud/derma/rare_grade.png")
StarHUD.F4.JobFrame = Material("starhud/derma/gray_mail_frame.png")
StarHUD.F4.ButtonNorm = Material("starhud/derma/button/tab_n.png")
StarHUD.F4.ButtonHover = Material("starhud/derma/button/tab_h.png")
StarHUD.F4.ButtonClick = Material("starhud/derma/button/tab_a.png")
StarHUD.F4.ButtonRNorm = Material("starhud/derma/button/right_n.png")
StarHUD.F4.ButtonRHover = Material("starhud/derma/button/right_h.png")
StarHUD.F4.ButtonRClick = Material("starhud/derma/button/right_a.png")
StarHUD.F4.ButtonLNorm = Material("starhud/derma/button/left_n.png")
StarHUD.F4.ButtonLHover = Material("starhud/derma/button/left_h.png")
StarHUD.F4.ButtonLClick = Material("starhud/derma/button/left_a.png")
StarHUD.F4.ModelHover = Material("starhud/derma/item_hovered_event.png")
-----------
--FUNCS
-----------

function StarHUD.F4.Open()
  if IsValid(StarHUD.F4.Menu) then
    StarHUD.F4.Menu:Remove()
  end
---------
local pcol = Color(213, 153, 45)

StarHUD.F4.Menu = vgui.Create("DStarFrame")
local f4 = StarHUD.F4.Menu
f4:SetSize(ScrW()*.6, ScrH()*.75)
f4:Center()
f4:MakePopup()
f4:SetPanelColor(pcol)
f4:SetDraggable(false)
f4.MenuButtons = {}
  f4.GetLang = function(me)
    local lang = me.cur_lang or "English"
	return lang
  end
  f4.OnKeyCodePressed = function(me, key)
    if key == KEY_F4 then
	  me:SetVisible(false)
	end
  end

  local l_tbl = StarHUD.language.Get( f4:GetLang() )
  f4:SetTitle(l_tbl["Title"])
  
  local close = f4.btnClose
  close.DoClick = function(me)
    me:GetParent():SetVisible(false)
	surface.PlaySound("starsound/click.mp3")
  end

local langs = vgui.Create("DComboBox", f4)
langs:SetSize(f4:GetWide() *.075, f4:GetTall()*.032)
langs:SetPos(f4:GetWide() *.8, f4:GetTall() *.99 - langs:GetTall() )
  for k,v in pairs(StarHUD.language) do
    if type(v) != "table" then continue end
	langs:AddChoice(k)
  end
  langs.OnSelect = function(me, index, val)
    f4.cur_lang = val
	local l_tbl = StarHUD.language.Get(val)
	for k,v in pairs(f4.MenuButtons) do
	  v.Name = l_tbl[k]
	end
	f4:SetTitle(l_tbl["Title"])
  end
  langs.Paint = function(me)
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.ButtonNorm)
	surface.DrawTexturedRect(0,0,me:GetWide(), me:GetTall())    
  end
  local drop = langs.DropButton
  drop.Paint = function(me)
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.ButtonRNorm)
	surface.DrawTexturedRect(0,0,me:GetWide(), me:GetTall())
  end
  
local base = vgui.Create("DPanel", f4)
f4.Base = base
base:SetSize(f4:GetWide()*.95, f4:GetTall()*.8)
base:SetPos(0, f4:GetTall()*.12)
base:CenterHorizontal()
  base.Paint = function(me)
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.Base)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
---------
local butlist = vgui.Create("DPanelList", base)
butlist:SetSize(base:GetWide()*.29, base:GetTall())
butlist:EnableVerticalScrollbar(true)
butlist:SetSpacing(2)
  for k,v in SortedPairs(StarHUD.F4.Buttons) do
    local but = vgui.Create("DButton")
	f4.MenuButtons[v.Name] = but
	but:SetSize(butlist:GetWide(), butlist:GetTall()*.1)
	but:SetText("")
	but.Name = l_tbl[v.Name]
	but.OnCursorEntered = function(me)
	  surface.PlaySound("starsound/star_hover2.mp3")
	  me.ins = true
	end
	but.OnCursorExited = function(me)
	  me.ins = false
	end
	but.DoClick = function(me)
	  surface.PlaySound("starsound/click.mp3")
	  f4.CurTab = me.Name
	  if f4.List then
	    for k,v in pairs(f4.List) do
		  if !IsValid(v) then f4.List[k] = nil continue end
		  v:Remove()
		  f4.List[k] = nil
		end
	  end
	  f4.List = {}
	  v.Func(f4)
	end
	but.Paint = function(me)
	  local mat = StarHUD.F4.ButtonMat
	  if me.ins then
	    mat = StarHUD.F4.ButtonHov
	  elseif f4.CurTab == me.Name then
	    mat = StarHUD.F4.ButtonSel
	  end
	  surface.SetDrawColor(255,255,255)
	  surface.SetMaterial(mat)
	  surface.DrawTexturedRect(0,0,me:GetWide(), me:GetTall())
	  
	  local offset = me:GetWide()*.2
	  local iw = offset*.4
	  surface.SetDrawColor(255,255,255)
	  surface.SetMaterial(v.Mat)
	  surface.DrawTexturedRect((offset/2) - (iw/2), me:GetTall()/2 - (iw/2), iw, iw)
	  
	  draw.SimpleText(me.Name, "StarHUDFontTitle", offset + offset*.1, me:GetTall()/2, pcol, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	end
	--
	butlist:AddItem(but)
  end
return f4
end
concommand.Add("StarHUD_OpenF4",StarHUD.F4.Open)

function StarHUD.F4.Toggle()
  if !IsValid(StarHUD.F4.Menu) then
    StarHUD.F4.Open()
	return
  end
  local f4 = StarHUD.F4.Menu
  if f4:IsVisible() then
    f4:SetVisible(false)
  else
    f4:SetVisible(true)
  end
end

function StarHUD.F4.CreateFonts()
  surface.CreateFont( "StarHUDFont", {          
	font = "Laconic",
	weight = 400,
	bold = true,
	shadow = true,
	size = ScreenScale(7)
  } )
  
  surface.CreateFont( "StarHUDFontSmall", {          
	font = "Laconic",
	weight = 400,
	bold = true,
	shadow = true,
	size = ScreenScale(6.5)
  } )  
end
StarHUD.F4.CreateFonts()

--------
--JOBS
function StarHUD.F4.Jobs(f4)
f4.Job = nil
local l_tbl = StarHUD.language.Get(f4:GetLang())
local base = f4.Base
local minus = base:GetWide()*.3
local offset = (base:GetWide() - minus)
local space = offset*.01
--
local desc = vgui.Create("DPanel", base)
desc:SetSize((offset/2) - space, base:GetTall())
desc:SetPos(base:GetWide() - desc:GetWide(), 0)
f4.List[1] = desc
desc.Titles = {}
desc.Boxs = {}
--ButtonClick
local button = StarHUD.F4.CreateButton(desc, DarkRP.getPhrase("become_job"), "StarHUDFont")
button:SetSize(desc:GetWide()*.5, desc:GetTall()*.065)
button:SetPos(0, (desc:GetTall()*.98) - button:GetTall())
button:CenterHorizontal()
  button.DoClick = function(me)
    surface.PlaySound("starsound/click.mp3")
    local job = f4.Job
	if !job then return end
	local closeFunc = function()
	  StarHUD.F4.Menu:SetVisible(false)
	end
    if not job.team then
        return
    elseif job.vote or job.RequiresVote and job.RequiresVote(LocalPlayer(), job.team) then
        local func = fn.Compose{closeFunc, fn.Partial(RunConsoleCommand, "darkrp", "vote" .. job.command)}
		func()
    else
        local func = fn.Compose{closeFunc, fn.Partial(RunConsoleCommand, "darkrp", job.command)}
		func()
    end
  end
--Model List
local mdllist = StarHUD.F4.CreateHorizontalList(desc)
desc.MdlList = mdllist
mdllist:SetSize(desc:GetWide()*.8, desc:GetTall()*.075)
local bx,by = button:GetPos()
local spacing = desc:GetTall()*.0135
mdllist:SetPos(0, by - mdllist:GetTall() - spacing)
mdllist:CenterHorizontal()
  mdllist.RemoveList = function(me)
    for k,v in pairs(me.Panels or {}) do
	  v:Remove()
	  me.Panels[k] = nil
	end
  end
  mdllist.AddList = function(me, tbl)
    mdllist.RemoveList(me)
	--
	for k,v in pairs(tbl) do
	  local preview = vgui.Create("ModelImage")
	  local mw = me:GetTall()
	  preview:SetSize(mw, mw)
	  preview.ApplySchemeSettings = function(me)
	    return
	  end
	  preview:SetModel(v, 0)
	  local but = vgui.Create("DButton", preview)
	  but:SetSize(preview:GetSize())
	  but:SetText("")
	  but.Paint = function(me)
        if v == f4.SelMdl then
		  surface.SetDrawColor(255,255,255)
		  surface.SetMaterial(StarHUD.F4.ModelHover)
		  surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
		end
	  end
	  but.DoClick = function(me)
	    local job = f4.Job
		if !job then return end
		f4.SelMdl = v
	    DarkRP.setPreferredJobModel(job.team, v)
	  end
	  me:AddPanel(preview)
	end
  end
--
  desc.Paint = function(me)
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.JobBack)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
--
local tbl = {}
tbl[1] = {title = "Job Title", ypos = 0}
tbl[2] = {title = "Job Description", ypos = .2}
tbl[3] = {title = "Job Weapons", ypos = .55}
  for k,v in pairs(tbl) do
    local box = vgui.Create("DPanel", desc)
    desc.Titles[k] = box
	box:SetSize(desc:GetWide(),desc:GetTall()*.1)
	box:SetPos(0, desc:GetTall()*v.ypos)
	box.title = l_tbl[v.title]
	box.Paint = function(me)
      surface.SetDrawColor(255,255,255)
	  surface.SetMaterial(StarHUD.F4.JobBlock)
	  surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())	  
	  --
	  draw.SimpleText(me.title, "StarHUDFontTitle", me:GetWide()/2, me:GetTall()/2, Color(124, 176, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
  end
--
local tbl2 = {}
tbl2[1] = {text = "Job Name", ypos = .125, height = .11}
tbl2[2] = {text = "Job Description", ypos = .325, height = .21, paint = true}
tbl2[3] = {text = "Job Weapons", ypos = .675, height = .13, paint = true}

  for k,v in pairs(tbl2) do
    local scroll = StarHUD.F4.CreateScroll(desc)
    scroll:SetSize(desc:GetWide()*.9, desc:GetTall() *v.height)
    scroll:SetPos(0, desc:GetTall()*v.ypos)
    scroll:CenterHorizontal()
      scroll.Paint = function(me)
	    if v.paint then
          surface.SetDrawColor(255,255,255)
    	  surface.SetMaterial(StarHUD.F4.DescMat)
    	  surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
		end
      end

    local dbox = vgui.Create("DLabel")
	desc.Boxs[k] = dbox
    dbox:SetWrap(true)
    dbox:SetAutoStretchVertical(true)
    dbox:SetFont("StarHUDFont")
    dbox:SetWide(scroll:GetWide())
    dbox:SetText(v.text)
    dbox:SetTextColor(Color(124, 176, 255))
    scroll:AddItem(dbox)
  end
--
local jobname = desc.Boxs[1]
local jobdesc = desc.Boxs[2]
local jobweps = desc.Boxs[3]

local list = StarHUD.F4.CreateList(base)
f4.List[2] = list
list:EnableVerticalScrollbar(true)
list:SetSize((offset/2) - space, base:GetTall())
list:SetPos(minus + (space), 0)
list:SetSpacing(4)
local jobs = RPExtraTeams
local categories = {}
  for k,v in pairs(jobs) do
    local cat = v.category or "Other"
    if categories[cat] then continue end
	local ui_cat = StarHUD.F4.CreateCategory(list:GetWide(), list:GetTall(), cat, v.color)
	ui_cat:Dock(TOP)
	local ui_list = StarHUD.F4.CreateList()
	ui_list:EnableVerticalScrollbar(true)
	ui_list:SetSize(ui_cat:GetSize())
	ui_list:SetSpacing(4)
	ui_cat:SetContents(ui_list)
	--
	list:AddItem(ui_cat)
	categories[cat] = ui_list
  end
  for k,v in pairs(jobs) do
	--
    local cat = v.category or "Other"
    local but = vgui.Create("DButton")
	but:SetSize(list:GetWide(), list:GetTall()/7)
	but:SetText("")
	but.OnCursorEntered = function(me)
	  surface.PlaySound("starsound/star_hover2.mp3")
	  me.ins = true
	end
	but.OnCursorExited = function(me)
	  me.ins = false
	end
	but.DoClick = function(me)
	  surface.PlaySound("starsound/click.mp3")
	  if type(v.model) == "table" then
	    mdllist.AddList(mdllist, v.model)
	  else
	    mdllist.RemoveList(mdllist)
	  end
	  ---
	  f4.Job = v
	  ---
	  jobname:SetText(v.name)
	  jobdesc:SetText(v.description)
	  local str = ""
	  local tab = v.weapons or {}
	  local count = table.Count(tab)
	  for a,b in pairs(tab) do
	    if a < count then
	      str = str..""..b..", "
		else
	      str = str..""..b..""	
		end
	  end
	  jobweps:SetText(str)
	end
	local hw = but:GetTall()*.6
	local off = hw*.1
    local modelpanel = vgui.Create("ModelImage", but)
	local model = v.model
	if type(model) == "table" then
	  model = model[1]
	end
    modelpanel:SetModel(model, 0)
    modelpanel:SetSize(hw - off, hw - off)  
    modelpanel:SetPos(off/2, off/2)
    modelpanel:SetPaintedManually( true )
	local pcount = 0
	for a,b in pairs(player.GetAll()) do
	  if team.GetName(b:Team()) == v.name then
	    pcount = pcount+1
	  end
	end
	local max = v.max
	if max < 1 then
	  max = "∞"
	end
	but.Paint = function(me)
	  local mat = StarHUD.F4.JobBut
	  local str_col = l_tbl["Colour"]
	  local str_sal = l_tbl["Salary"]
	  if me.ins then
	    mat = StarHUD.F4.JobButH
	  end
	  surface.SetDrawColor(255,255,255)
	  surface.SetMaterial(mat)
	  surface.DrawTexturedRect(hw,0,me:GetWide() - hw,me:GetTall())
	  
	  surface.SetDrawColor(255,255,255)
	  surface.SetMaterial(StarHUD.F4.JobBackFrame)
	  surface.DrawTexturedRect(off/2, off/2,hw-off,hw-off)	  
	  modelpanel:PaintManual()
	  surface.SetMaterial(StarHUD.F4.JobFrame)
	  surface.DrawTexturedRect(0,0,hw,hw)
      
      draw.SimpleText(v.name, "StarHUDFont", hw*1.1, me:GetTall()*.015, Color(124, 176, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT) 
	  surface.SetFont("StarHUDFont")
	  local tw,th = surface.GetTextSize("!")
      draw.SimpleText(str_col..":", "StarHUDFont", hw*1.1, me:GetTall()*.015 + th*1.05, Color(124, 176, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	  draw.SimpleText(pcount.."/"..max, "StarHUDFont", me:GetWide()*.925, me:GetTall()*.015 + th*1.05, Color(124, 176, 255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_LEFT)
	  draw.SimpleText(str_sal..": $"..v.salary, "StarHUDFontSmall", hw*1.1, me:GetTall()*.7, Color(124, 176, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	 
	  local bw = me:GetWide()*.035
	  tw,th = surface.GetTextSize(str_col..": ")
	  draw.RoundedBox(8, hw*1.2 + tw,th + (bw*.75), bw, bw, v.color) 	  
	end
	categories[cat]:AddItem(but)
  end
end
--------
--SHIPMENTS
local function canBuyShipment(ship)
    local ply = LocalPlayer()

    if not table.HasValue(ship.allowed, ply:Team()) then return false, true end
    if ship.customCheck and not ship.customCheck(ply) then return false, true end

    local canbuy, suppress, message, price = hook.Call("canBuyShipment", nil, ply, ship)
    local cost = price or ship.getPrice and ship.getPrice(ply, ship.price) or ship.price

    if not ply:canAfford(cost) then return false, false, cost end

    if canbuy == false then
        return false, suppress, cost
    end

    return true, nil, cost
end

function StarHUD.F4.Shipments(f4)
local categories = DarkRP.getCategories().shipments
StarHUD.F4.CreateBase(f4, categories, canBuyShipment, "buyshipment")
end
---------
--WEPS
local function canBuyGun(ship)
    local ply = LocalPlayer()

    if GAMEMODE.Config.restrictbuypistol and not table.HasValue(ship.allowed, ply:Team()) then return false, true end
    if ship.customCheck and not ship.customCheck(ply) then return false, true end

    local canbuy, suppress, message, price = hook.Call("canBuyPistol", nil, ply, ship)
    local cost = price or ship.getPrice and ship.getPrice(ply, ship.pricesep) or ship.pricesep

    if not ply:canAfford(cost) then return false, false, cost end

    if canbuy == false then
        return false, suppress, cost
    end

    return true, nil, cost
end

function StarHUD.F4.Weapons(f4)
local categories = DarkRP.getCategories().weapons
  StarHUD.F4.CreateBase(f4, categories, canBuyGun, "buy", function(b)
    if !b.separate then
	  return
	end
	return true
  end)
end
---------
--AMMO
local function canBuyAmmo(item)
    local ply = LocalPlayer()

    if item.customCheck and not item.customCheck(ply) then return false, true end

    local canbuy, suppress, message, price = hook.Call("canBuyAmmo", nil, ply, item)
    local cost = price or item.getPrice and item.getPrice(ply, item.price) or item.price
    if not ply:canAfford(cost) then return false, false, cost end

    if canbuy == false then
        return false, suppress, price
    end

    return true, nil, price
end

function StarHUD.F4.Ammo(f4)
local categories = DarkRP.getCategories().ammo
StarHUD.F4.CreateBase(f4, categories, canBuyAmmo, "buyammo", nil, "id")
end
---------
--ENTITY
local function canBuyEntity(item)
    local ply = LocalPlayer()

    if istable(item.allowed) and not table.HasValue(item.allowed, ply:Team()) then return false, true end
    if item.customCheck and not item.customCheck(ply) then return false, true end

    local canbuy, suppress, message, price = hook.Call("canBuyCustomEntity", nil, ply, item)
    local cost = price or item.getPrice and item.getPrice(ply, item.price) or item.price
    if not ply:canAfford(cost) then return false, false, cost end

    if canbuy == false then
        return false, suppress, cost
    end

    return true, nil, cost
end

function StarHUD.F4.Entity(f4)
local categories = DarkRP.getCategories().entities
StarHUD.F4.CreateBase(f4, categories, canBuyEntity, nil, nil, "cmd")
end
-------------
--MISC
function StarHUD.F4.CreateButton(parent, text, font)
local but = vgui.Create("DButton", parent)
but:SetText("")
  but.OnCursorEntered = function(me)
    surface.PlaySound("starsound/star_hover2.mp3")
    me.ins = true
  end
  but.OnCursorExited = function(me)
    me.ins = false
  end
  but.OldMousePress = but.OnMousePressed
  but.OldMouseRel = but.OnMouseReleased 
  but.OnMousePressed = function(me)
    if me.OldMousePress then
	  me.OldMousePress(me)
	end
	me.pressed = true
  end
  but.OnMouseReleased = function(me)
    if me.OldMouseRel then
	  me.OldMouseRel(me)
	end
	if me.DoClick then
	  me.DoClick(me)
	end
	me.pressed = false
  end
------
  but.Paint = function(me)
    local mat = StarHUD.F4.ButtonNorm
	if me.pressed then
	  mat = StarHUD.F4.ButtonClick
	elseif me.ins then
	  mat = StarHUD.F4.ButtonHover	  
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
	
	draw.SimpleText(text, font, me:GetWide()/2, me:GetTall()/2, Color(124, 176, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
  end
--
return but
end

function StarHUD.F4.GeneralButton(bw, bh, tbl, checkFunc, command, id)
  local but = vgui.Create("DButton")
  but:SetSize(bw, bh)
  but:SetText("")
  but.DoClick = function(me)
    --local can, important, price = checkFunc(tbl)
	if command then
	  RunConsoleCommand("DarkRP", command, id or tbl.name)
	else
	  RunConsoleCommand("DarkRP", id or tbl.name)
	end
  end
  local c,i,price = checkFunc(tbl)
  price = price or tbl.price
  if price then
    price = price..".00"
  end
  local hw = but:GetWide()*.225
  local hoff = hw*.1
  -----------
  local modelpanel = vgui.Create("ModelImage", but)
  modelpanel:SetModel(tbl.model, 0)
  modelpanel:SetSize(hw*.65, hw*.65)  
  modelpanel:SetPos(hw/2 - (modelpanel:GetWide()/2), hw/2 - (modelpanel:GetTall()/2))
  modelpanel:SetPaintedManually( true )
  -----------
  but.Paint = function(me)
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.BoxBack)
	surface.DrawTexturedRect(0, 0, hw, hw)
	modelpanel:PaintManual()
	
	surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.Box)
	surface.DrawTexturedRect(hoff/2, hoff/2, hw - hoff, hw - hoff)	  
	  
	local mycol = Color(255,255,255)
	if !c then
	  mycol = Color(204,20,20)
	end
	surface.SetDrawColor(mycol)
	surface.SetMaterial(StarHUD.F4.Round)
	surface.DrawTexturedRect(hw,0,me:GetWide() - hw, me:GetTall())
	
	draw.SimpleText(tbl.name, "StarHUDFont", hw*1.1, me:GetTall()*.4, Color(124, 176, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	--
	surface.SetDrawColor(255,255,255)
	surface.SetMaterial(StarHUD.F4.Price)
	local pw = me:GetWide()*.045
	surface.DrawTexturedRect(hw*1.1, me:GetTall()*.675, pw, pw)
	--
	draw.SimpleText(price or "nil", "StarHUDFontSmall", hw*1.1 + pw*1.05, me:GetTall()*.775, Color(213, 153, 45)  , TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
  end
  -----------
return but
end

function StarHUD.F4.CreateCategory(w,h,label,col)
  local category = vgui.Create("DCollapsibleCategory")
  category:SetSize(w, h)
  category:Dock(TOP)
  category:SetExpanded( 0 )
  category:SetLabel( label )
  local header = category.Header
  header:SetSize(w,h*.085)
  header.OnCursorEntered = function(me)
	me:GetParent().ins = true
  end
  header.OnCursorExited = function(me)
	me:GetParent().ins = false
  end
  header.OldClick = header.DoClick
  header.DoClick = function(me)
    me.OldClick(me)
	surface.PlaySound("starsound/click.mp3")
  end
  category.Txt = header:GetText()
  header:SetText("")
  category.MaxW = header:GetWide()
  category.MaxH = header:GetTall()
    category.Paint = function(me)
	  local mat = StarHUD.F4.Form
	  local mycol = Color(255,255,255)
	  if me:GetExpanded() or me.ins then
	    mat = StarHUD.F4.FormSel
	  elseif col then
	    mycol = col
	  end
      surface.SetDrawColor(mycol)
	  surface.SetMaterial(mat)
	  local w = me.MaxW
	  local h = me.MaxH
	  surface.DrawTexturedRect(0,0,w,h)
	  --
	  draw.SimpleText(me.Txt or "", "StarHUDFontTitle", w/2, h/2, Color(124, 176, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end	
return category
end

function StarHUD.F4.CreateHorizontalList(parent)
local list = vgui.Create("DHorizontalScroller", parent)
local right = list.btnRight
local left = list.btnLeft
--
  right.OldMousePress = right.OnMousePressed
  right.OldMouseRel = right.OnMouseReleased
  right.OnMousePressed = function(me)
    if me.OldMousePress then
	  me.OldMousePress(me)
	end
    me.pressed = true
  end
  right.OnMouseReleased = function(me)
    if me.OldMouseRel then
	  me.OldMouseRel(me)
	end
    me.pressed = false
  end
  
  left.OldMousePress = left.OnMousePressed
  left.OldMouseRel = left.OnMouseReleased
  left.OnMousePressed = function(me)
    if me.OldMousePress then
	  me.OldMousePress(me)
	end
    me.pressed = true
  end
  left.OnMouseReleased = function(me)
    if me.OldMouseRel then
	  me.OldMouseRel(me)
	end
    me.pressed = false
  end  
--
  right.Paint = function(me)
    local mat = StarHUD.F4.ButtonRNorm
	if me.pressed then
	  mat = StarHUD.F4.ButtonRHover
	elseif me.ins then
	  mat = StarHUD.F4.ButtonRClick
	end
	surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
  left.Paint = function(me)
    local mat = StarHUD.F4.ButtonLNorm
	if me.pressed then
	  mat = StarHUD.F4.ButtonLHover
	elseif me.ins then
	  mat = StarHUD.F4.ButtonLClick
	end
	surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end  
--
return list
end

function StarHUD.F4.CreateList(parent)
local list = vgui.Create("DPanelList", parent)
list:EnableVerticalScrollbar(true)
local vbar = list.VBar
local up = vbar.btnUp
local down = vbar.btnDown
local grip = vbar.btnGrip
--
  up.OnCursorEntered = function(me)
    me.ins = true
  end
  up.OnCursorExited = function(me)
    me.ins = false
  end
  down.OnCursorEntered = function(me)
    me.ins = true
  end
  down.OnCursorExited = function(me)
    me.ins = false
  end
  grip.OnCursorEntered = function(me)
	me.ins = true
  end
  grip.OnCursorExited = function(me)
	me.ins = false
  end
--
  vbar.Paint = function(me)
    local mat = StarHUD.F4.ScrollBack
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
  up.Paint = function(me)
    local mat = StarHUD.F4.ScrollButUp
	if me.ins then
	  mat = StarHUD.F4.ScrollButUpH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())  
  end
  down.Paint = function(me)
    local mat = StarHUD.F4.ScrollButDown
	if me.ins then
	  mat = StarHUD.F4.ScrollButDownH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())  
  end  
  grip.Paint = function(me)
    local mat = StarHUD.F4.ScrollBar
	if me.ins then
	  mat = StarHUD.F4.ScrollBarH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
--
return list
end

function StarHUD.F4.CreateScroll(parent)
local list = vgui.Create("DScrollPanel", parent)
local vbar = list.VBar
local up = vbar.btnUp
local down = vbar.btnDown
local grip = vbar.btnGrip
--
  up.OnCursorEntered = function(me)
    me.ins = true
  end
  up.OnCursorExited = function(me)
    me.ins = false
  end
  down.OnCursorEntered = function(me)
    me.ins = true
  end
  down.OnCursorExited = function(me)
    me.ins = false
  end
  grip.OnCursorEntered = function(me)
	me.ins = true
  end
  grip.OnCursorExited = function(me)
	me.ins = false
  end
--
  vbar.Paint = function(me)
    local mat = StarHUD.F4.ScrollBack
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
  up.Paint = function(me)
    local mat = StarHUD.F4.ScrollButUp
	if me.ins then
	  mat = StarHUD.F4.ScrollButUpH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())  
  end
  down.Paint = function(me)
    local mat = StarHUD.F4.ScrollButDown
	if me.ins then
	  mat = StarHUD.F4.ScrollButDownH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())  
  end  
  grip.Paint = function(me)
    local mat = StarHUD.F4.ScrollBar
	if me.ins then
	  mat = StarHUD.F4.ScrollBarH
	end
    surface.SetDrawColor(255,255,255)
	surface.SetMaterial(mat)
	surface.DrawTexturedRect(0,0,me:GetWide(),me:GetTall())
  end
--
return list
end

function StarHUD.F4.CreateBase(f4, categories, checkFunc, command, addedCheck, id)
local base = f4.Base
local scroll = StarHUD.F4.CreateScroll(base)
local minus = base:GetWide()*.3
local offset = (base:GetWide() - minus)
local center = minus + (offset/2)
scroll:SetSize(base:GetWide()*.65, base:GetTall()*.925)
scroll:SetPos( center - (scroll:GetWide()/2), 0)
scroll:CenterVertical()
f4.List[1] = scroll
local space = scroll:GetWide()*.02
local bw = (scroll:GetWide()*.5) - (space*2)
--------------
  for k,v in pairs(categories) do
    local category = StarHUD.F4.CreateCategory(scroll:GetWide(), scroll:GetTall(), v.name)
	---------
    local list = StarHUD.F4.CreateList()
	list:EnableVerticalScrollbar(true)
	list:EnableHorizontal(true)
	list:SetSize(category:GetSize())
	list:SetSpacing(space)
	category:SetContents(list)
	local loops = v.members
	for a,b in SortedPairsByMemberValue(loops,"price") do
	  if addedCheck then
	    if !addedCheck(b) then
		  continue
		end
	  end
	  local m_id = nil
	    if id then
	      m_id = b[id]
	    end
	  local but = StarHUD.F4.GeneralButton(bw, list:GetTall()/6, b, checkFunc, command, m_id)
	  list:AddItem(but)
	end
	---------
	scroll:AddItem(category)
  end
end
-----------
--HOOKS
-----------
/*---------------------------------------------------------------------------
Interface functions
---------------------------------------------------------------------------*/
hook.Add("InitPostEntity", "StarHUDInit", function()

    ---------------------
    --OPEN MENU
    ---------------------
    function DarkRP.openF4Menu()
      StarHUD.F4.Open()
    end

    -----------------------------------------------------------------
    --[ CLOSE MENU ]
    -----------------------------------------------------------------
    function DarkRP.closeF4Menu()
      if IsValid(StarHUD.F4.Menu) then
	    StarHUD.F4.Menu:Remove()
	  end
    end

    -----------------------------------------------------------------
    -- [ TOGGLE MENU ]
    -----------------------------------------------------------------
    function DarkRP.toggleF4Menu()
      StarHUD.F4.Toggle()
    end

    GAMEMODE.ShowSpare2 = DarkRP.toggleF4Menu

end)

  surface.CreateFont( "StarHUDFontTitle", {          
	font = "Laconic",
	weight = 400,
	bold = true,
	shadow = true,
	size = ScreenScale(10)
  } )