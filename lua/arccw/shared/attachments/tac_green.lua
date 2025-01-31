att.PrintName = "Green Laser"
att.Icon = Material("entities/acwatt_tac_green.png", "mips smooth")
att.Description = "Green laser aiming module. Reduces time taken to bring sights on target."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {cspf.."tac_pistol", cspf.."tac"}

att.Model = "models/weapons/arccw/atts/laser_green.mdl"

att.Laser = true
att.LaserStrength = 0.7
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(50, 255, 50)}

att.Mult_SightTime = 0.8