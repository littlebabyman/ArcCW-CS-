att.PrintName = "ACOG 2 (1-3x)"
att.Icon = Material("entities/acwatt_optic_acog2.png", "smooth")
att.Description = "Electric boogaloo.\nMagnified medium-range optic. ACOG stands for 'Advanced Combat Optical Gunsight'. Includes a backup iron sight that can be toggled by double pressing +USE."

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "More awesome",
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/acog2_5a.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.119),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    },
    {
        Pos = Vector(0, 11.418, -2.426),
        Ang = Angle(-2.95, 0, 0),
        Magnification = 1.2,
        IgnoreExtra = true
    },
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/acog2.png")
att.HolosightNoFlare = true
att.HolosightSize = 5.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/acog2_3_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 3
att.HolosightBlackbox = true


att.HolosightMagnificationMin = 1.01 -- im hitler :)
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.12
att.Mult_SightedSpeedMult = 0.92