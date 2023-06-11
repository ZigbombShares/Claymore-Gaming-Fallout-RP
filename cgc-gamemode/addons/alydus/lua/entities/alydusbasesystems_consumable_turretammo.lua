--[[ 
	© Alydus.net
	Do not reupload lua to workshop without permission of the author

	Alydus Base Systems
	
	Alydus: (officialalydus@gmail.com | STEAM_0:1:57622640)
--]]

if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
else
	AddCSLuaFile()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/items/ammocrate_smg1.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetUseType(SIMPLE_USE)

		local phys = self:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetMass(1)
			phys:Wake()
		end

        self:SetPos(self:GetPos() + Vector(0, 0, 40))

        self:DropToFloor()
	end
end

function ENT:PhysicsCollide(data, phys)
	if IsValid(data.HitEntity) then
			data.HitEntity:SetNWInt("alydusBaseSystems.Ammo", data.HitEntity:GetNWInt("alydusBaseSystems.Ammo", 0) + GetConVar("sv_alydusbasesystems_config_gunturretammo_amount"):GetInt())
			data.HitEntity:EmitSound("alydus/gunturretreload.wav")
			timer.Simple(0, function()
				self:Remove()
			end)
	end
	if data.Speed > 50 and not data.HitEntity:IsPlayer() and not data.HitEntity:IsNPC() then
		self:EmitSound(Sound("Flashbang.Bounce"))
	end
end

function ENT:Use( activator, caller )
	if IsValid(activator) and activator:IsPlayer() then
		if self:IsPlayerHolding() then
			return
		end
		
		activator:PickupObject(self)
	end
end

function ENT:OnTakeDamage(dmg)
	if SERVER then
		if dmg and dmg:GetDamage() >= 1 then
			local explode = ents.Create("env_explosion")
			explode:SetPos(self:GetPos() + Vector(0, 0, 30))
			explode:Spawn()
			explode:SetKeyValue("iMagnitude", "5")
			explode:SetKeyValue("spawnflags", 16)
			explode:Fire("Explode", 0, 0)

			self:Remove()

			util.ScreenShake(self:GetPos() + Vector(0, 0, 30), 2.5, 2.5, 1.25, 100)
		end
	end
end
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.Spawnable = true
ENT.Category = "Alydus Base Systems"
ENT.PrintName = "Gun Turret Ammo"
ENT.Author = "Alydus"
ENT.Contact = "Alydus"
ENT.Purpose = ""
ENT.Instructions = ""