att.PrintName = "HAMR (1.5-2.7x)"
att.Icon = Material("entities/acwatt_optic_hamr.png", "mips smooth")
att.Description = "Zoom scope with integrated red dot sight. Slightly heavier than similar scopes."

att.SortOrder = 2.7

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.togglesight"
}
att.AutoStats = true
att.Slot = cspf.."optic"

att.Model = "models/weapons/arccw/atts/hamr.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.525),
        Ang = Angle(-0.2, -0.2, 0),
        Magnification = 1.3,
        ScopeMagnification = 2.7,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 2.7,
            HolosightMagnificationMin = 1.5,
            HolosightMagnificationMax = 2.7,
            HolosightReticle = Material("hud/scopes/hamr.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 11,
            HolosightBlackbox = true,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/atts/hamr_hsp.mdl"
        },
        IgnoreExtra = true
    },
    {
        Pos = Vector(0, 7.5, -3.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("holosights/dot.png", "mips smooth"),
            HolosightFlare = Material("holosights/dot_flare.png", "mips smooth"),
            HolosightSize = 0.4,
            Colorable = true,
            HolosightNoHSP = true
        }
    },
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/atts/hamr_hsp.mdl"

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.9

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}