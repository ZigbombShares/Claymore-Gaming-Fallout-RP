ENT.Base 			= "npc_vj_fo3bhs_libertyprime"
ENT.Type 			= "ai"
ENT.PrintName 		= "Hostile Liberty Prime"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Hostile Brother Hood of Steel"

if (CLIENT) then
local Name = "Hostile Liberty Prime"
local LangName = "npc_vj_fo3ene_libertyprime"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end