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