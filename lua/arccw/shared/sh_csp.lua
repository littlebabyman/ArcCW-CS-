-- A global variable to let addons know CS+ is installed
ArcCW.CSP = true

-- Custom prefix to not allow these CS+ atts in new guns steambored
ArcCW.CSP_CustomPrefix = "cs+-"

cspf = ArcCW.CSP_CustomPrefix

ArcCW.CSP_Holsters = {
    ["warlover"] = {
        pos = Vector(-2, -6, 3),
        ang = Angle(-7, 5, -5),
    },
    ["compliant"] = {
        pos = Vector(-4, -6, 3),
        ang = Angle(-5, 5, -5),
    },
    ["angrypistola"] = {
        pos = Vector(-1.3, -3, 1.6),
        ang = Angle(-3, 3, -6),
    },
    ["happypistola"] = {
        pos = Vector(-3, -3, 1.8),
        ang = Angle(-5, 4, -12),
    },
}

CSX_BodyDamageMults = {
    [HITGROUP_HEAD] = 2,

    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,

    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,

    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}