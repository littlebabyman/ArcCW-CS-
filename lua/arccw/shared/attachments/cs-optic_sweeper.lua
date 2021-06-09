att.PrintName = "Sweeper (4-7x)"
att.Icon = Material("entities/acwatt_optic_sweeper.png")
att.Description = "Common police rifle optic that can adjusted between medium and medium-long range magnification. Large claw mount allows space for a backup sight."

att.SortOrder = 5

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_sniper"

att.Model = "models/weapons/arccw/atts/sweeper_3.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 20, -2.06),
        Ang = Angle(0, 0, 0),
        Magnification = 2.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/g3.png")
att.HolosightNoFlare = true
att.HolosightSize = 12
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/sweeper_hsp_3.mdl"
att.Colorable = true

att.HolosightMagnification = 3
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 6

att.Mult_SightTime = 1.3
att.Mult_SightedSpeedMult = 0.84
att.Mult_SpeedMult = 0.92