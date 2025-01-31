att.PrintName = "Hunter (2-5x)"
att.Icon = Material("entities/acwatt_optic_hunter.png", "mips smooth")
att.Description = "Adjustable medium-long range sniper optic."

att.SortOrder = 5

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_sniper"

att.Model = "models/weapons/arccw/atts/hunter.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 11, -1.08),
        Ang = Angle(0, -0.2, 0),
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/duplex.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 13
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/hunter_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 3
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 5

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.9
att.Mult_SpeedMult = 0.98