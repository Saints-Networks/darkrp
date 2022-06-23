StarHUD = StarHUD or {}
StarHUD.language = StarHUD.language or {}
--------

function StarHUD.language.Reg( name, tbl )
StarHUD.language[name] = tbl
end

function StarHUD.language.Get( name )
return StarHUD.language[name]
end

if StarHUD.InitConfig then
  StarHUD.InitConfig()
else
  timer.Simple(1, function()
    StarHUD.InitConfig()
  end)
end