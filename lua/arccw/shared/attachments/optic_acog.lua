att.PrintName = "ACOG (2-3x)"
att.Icon = Material("entities/acwatt_optic_acog.png", "mips smooth")
att.Description = "Magnified medium-range optic. ACOG stands for 'Advanced Combat Optical Gunsight'."

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic"

att.Model = "models/weapons/arccw/atts/acog.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 9, -1.433),
        Ang = Angle(0, 0, 0),
        Magnification = 1.3,
        ScopeMagnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        IgnoreExtra = true
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/acog.png")
att.HolosightFlare = Material("hud/scopes/acog_flare.png")
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/acog_hsp.mdl"
att.Colorable = true

att.HolosightBlackbox = true

att.HolosightMagnification = 3
att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.12
att.Mult_SightedSpeedMult = 0.92