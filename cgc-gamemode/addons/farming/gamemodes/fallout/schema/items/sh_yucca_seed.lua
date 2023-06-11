ITEM.name = "Banana Yucca Seed"
ITEM.model = "models/props_junk/garbage_bag001a.mdl"
ITEM.desc = "A packet of Banana Yucca seeds | Chem Ingredient"

ITEM.functions.Use = {
	onRun = function(item)
		local client = item.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + (client:GetAimVector() * 96)
			data.filter = client
		local trace = util.TraceLine(data)

		if (trace.HitPos) then
			local ent = ents.Create("farm_seed")
            ent.type = "banana"
			ent:SetPos(trace.HitPos + trace.HitNormal * 10)
			ent:Spawn()
		end

		return true
	end
}
