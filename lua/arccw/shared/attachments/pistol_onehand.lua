att.PrintName = "Cowboy Style"
att.Icon = Material("entities/acwatt_pistol_onehand.png", "mips smooth")
att.Description = "A one-handed shooting style which improves maneuverability but reduces recoil control."
att.Desc_Pros = {
    "pro.pistol_onehand"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."style_pistol"

att.Free = true

att.LHIK = true
att.LHIKHide = true

att.Override_ShootWhileSprint = true

att.MountPositionOverride = 0

att.Mult_MoveDispersion = 1.5

att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5

att.Mult_SightTime = 0.5
att.Mult_DrawTime = 0.5

att.Override_HoldtypeSights = "pistol"
att.Override_HoldtypeActive = "pistol"