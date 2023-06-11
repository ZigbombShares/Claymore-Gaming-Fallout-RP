ENT.Type = "anim"
ENT.PrintName			= "Nade"
ENT.Author			= ""
ENT.Contact			= ""
ENT.Purpose			= ""
ENT.Instructions			= ""

if SERVER then

AddCSLuaFile( "shared.lua" )

function ENT:Initialize()

	self.Owner = self.Entity.Owner

	self.Entity:SetModel("models/Items/grenadeAmmo.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	phys:SetMass(5)
	end

	self.timeleft = CurTime() + 1.5
	self:Think()

util.SpriteTrail(self.Entity, 0, Color(155, 155, 155, 155), false, 2, 10, 5, 5 / ((2 + 10) * 0.5), "trails/smoke.vmt")

end

 function ENT:Think()
	
	if self.timeleft < CurTime() then
		self:Explosion()	
	end

	self.Entity:NextThink( CurTime() )
	return true
end

function ENT:Explosion()


	local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
		effectdata:SetEntity(self.Entity)
		effectdata:SetStart(self.Entity:GetPos())
		effectdata:SetNormal(Vector(0,0,1))
		--util.Effect("ManhackSparks", effectdata)
		util.Effect("Explosion", effectdata)
		util.Effect("Explosion", effectdata)
	
	local thumper = effectdata
		thumper:SetOrigin(self.Entity:GetPos())
		thumper:SetScale(500)
		thumper:SetMagnitude(500)
		util.Effect("ThumperDust", effectdata)
		
	local sparkeffect = effectdata
		sparkeffect:SetMagnitude(3)
		sparkeffect:SetRadius(8)
		sparkeffect:SetScale(5)
		util.Effect("Sparks", sparkeffect)
		
	local scorchstart = self.Entity:GetPos() + ((Vector(0,0,1)) * 5)
	local scorchend = self.Entity:GetPos() + ((Vector(0,0,-1)) * 5)
	
	util.BlastDamage(self.Entity, self.Owner, self.Entity:GetPos(), 200, 100)
	util.ScreenShake(self.Entity:GetPos(), 500, 500, 1.25, 500)
	self.Entity:Remove()
	-- loos like if I don't remove the entity before drawing this scorch, the scorch will draw on the entity 
	-- and disappear immediately after
	util.Decal("Scorch", scorchstart, scorchend)
end

/*---------------------------------------------------------
PhysicsCollide
---------------------------------------------------------*/
function ENT:PhysicsCollide(data,phys)
	if data.Speed > 50 then
	self:Explosion()
	end
	
	local impulse = -data.Speed * data.HitNormal * .4 + (data.OurOldVelocity * -.6)
	phys:ApplyForceCenter(impulse)
	
end

end

if CLIENT then
function ENT:Draw()
	self.Entity:DrawModel()
end
end