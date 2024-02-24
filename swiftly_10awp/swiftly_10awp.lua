events:on("OnWeaponSpawned", function(playerid, weaponid)
    local player = GetPlayer(playerid)
    if not player then return end
    local weapon = player:weapons():GetWeapon(weaponid)
    if not weapon then return end
       if weapon:Exists() == 0 then return end
    
    if weapon:GetName() == "weapon_awp" then
        weapon:SetClipAmmo(10)
    end
end)

function GetPluginAuthor()
    return "Swiftly Solution"
end
function GetPluginVersion()
    return "v1.0.0"
end
function GetPluginName()
    return "Swiftly 10 AWP Ammo"
end
function GetPluginWebsite()
    return "https://github.com/swiftly-solution/swiftly_10awp"
end