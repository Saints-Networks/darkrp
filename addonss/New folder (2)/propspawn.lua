local hooks = {
    "Effect",
    "NPC",
    "Prop",
    "Ragdoll",
    "SENT",
    "Vehicle"
}


for _, v in pairs (hooks) do


    hook.Add("PlayerSpawn"..v, "Disallowuser"..v, function(client)
        if (client:IsUserGroup("admin") or client:IsUserGroup("superadmin")) then
            return true
        end

        return false
    end)

end