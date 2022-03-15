att.PrintName = "Fire and Brimstone"
att.Icon = Material("entities/acwatt_ammo_api.png", "mips smooth")
att.Description = "Load weapon with armor-piercing incendiary ammo. The bullet melts, which ignites targets in its effective range.\nDue to reliability issues, reduced-capacity magazines are used."
att.Desc_Pros = {
    "pro.ignite"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."ammo_bullet"

att.Mult_Damage = 0.7
att.Mult_DamageMin = 0.7
att.Mult_Penetration = 2
att.Mult_Recoil = 1.15

att.Override_DamageType = DMG_BURN

att.MagReducer = true

att.ActivateElements = {"reducedmag"}

-- Fire is stupid
att.Ignore = true