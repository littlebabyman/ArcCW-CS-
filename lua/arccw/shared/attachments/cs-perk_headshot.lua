att.PrintName = "Boom, Headshot"
att.Icon = Material("entities/acwatt_cs-perk_headshot.png", "mips smooth")
att.Description = "Adds an extra multiplier to headshot damage."
att.Desc_Pros = {
    "2x headshot damage"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."perk"


att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if data.tr.HitGroup == HITGROUP_HEAD then
        data.damage = data.damage * 2
    end
end