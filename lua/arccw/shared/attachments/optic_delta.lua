att.PrintName = "Delta (LP)"
att.Icon = Material("entities/acwatt_optic_delta.png", "mips smooth")
att.Description = "Low-profile red dot sight for pistols, with dot reticle."

att.SortOrder = -0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_lp"

att.Model = "models/weapons/arccw/atts/delta.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.7),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png", "mips smooth")
att.HolosightFlare = Material("holosights/dot_flare.png", "mips smooth")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Colorable = true