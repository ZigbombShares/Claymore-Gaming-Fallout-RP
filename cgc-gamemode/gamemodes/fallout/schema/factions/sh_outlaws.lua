FACTION.name = "Nuka Cola Company"
FACTION.desc = "A normal wastelander."
FACTION.color = Color(20, 9, 0)
FACTION.isDefault = false
FACTION.weapons = {"weapon_assault_carbine_l"}

FACTION.mdls = {
	["male"] = {
		"models/Humans/Group02/male_09.mdl",
	},

	["female"] = {
		"models/Humans/Group01/Female_02.mdl",
	},
}
FACTION.models = {}

for i, v in pairs(FACTION.mdls["male"]) do
	FACTION.models[#FACTION.models + 1] = v
end;

for i, v in pairs(FACTION.mdls["female"]) do
	FACTION.models[#FACTION.models + 1] = v
end;

FACTION.karma = {
	kill = {2, 2},
	passive = {15, 15},
}

FACTION_OUTLAWS = FACTION.index
