att.PrintName = "Wide Choke"
att.Icon = Material("entities/acwatt_muzz_widechoke.png", "mips smooth")
att.Description = "Shotgun choke which increases pellet spread, but greatly reduces hip fire dispersion and felt recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {cspf.."choke", cspf.."muzzle_shotgun"}

att.SortOrder = 30

att.Mult_Recoil = 0.8
att.Mult_HipDispersion = 0.1
att.Mult_AccuracyMOA = 2.5

att.Ignore = true