att.PrintName = "EOMPTS (FLIR)"
att.Icon = Material("entities/acwatt_optic_eompts.png")
att.Description = "Light infrared thermal vision scope. EOMPTS stands for 'EOTech Miniature Prototype Thermal Sight'. Quite heavy."

att.SortOrder = 40

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic"

att.Model 				= "models/weapons/arccw/atts/eompts_4b.mdl"
att.HolosightPiece 	= "models/weapons/arccw/atts/eompts_hsp_4a.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.01, 15, -1.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.75,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/eompts.png")
att.Colorable = false
att.HolosightNoFlare = true
att.HolosightSize = 14
att.HolosightBone = "holosight"

att.HolosightMagnification = 1.1
att.HolosightBlackbox = false

att.HolosightConstDist = 42

att.Mult_SightTime = 1.4
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.875