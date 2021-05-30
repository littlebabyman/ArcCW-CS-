att.PrintName = "Colossal Suppressor"
att.Icon = Material("entities/acwatt_supp_heavy.png", "mips smooth")
att.Description = "Large sound suppressor with ballistic-enhancing qualities. Extremely cumbersome."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.obstruction"
}
att.AutoStats = true
att.Slot = cspf.."muzzle"

att.SortOrder = 85

att.Model = "models/weapons/arccw/atts/supp_heavy.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 0.9
att.Mult_ShootVol = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Mult_SightTime = 1.33
att.Mult_HipDispersion = 1.25

att.Add_BarrelLength = 12

att.ModelScale = Vector(0.8, 0.9, 0.9)