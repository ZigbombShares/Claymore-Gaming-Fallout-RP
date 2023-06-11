AddCSLuaFile()

if (CLIENT) then
	SWEP.PrintName = "Smoke Grenade"
	SWEP.Instructions = "Pull the pin and throw."
	SWEP.Purpose = "A grenade which emits a smoke screen."
	SWEP.WepSelectIcon = surface.GetTextureID("weapons/weapon_sh_smokegrenade")
	SWEP.BounceWeaponIcon = false
	SWEP.DrawWeaponInfoBox = true
	SWEP.Slot = 3
	SWEP.SlotPos = 1
end

SWEP.Category = "SH Weapons"
SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cstrike/c_eq_smokegrenade.mdl"
SWEP.ViewModelFOV = 54
SWEP.WorldModel = "models/weapons/w_eq_smokegrenade.mdl"

game.AddAmmoType({name = "Smoke Grenades"})

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 2
SWEP.Primary.Ammo = "Smoke Grenades"
SWEP.Primary.Automatic = false

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Ammo = "none"

SWEP.ThrownProjectile = "proj_sh_smokegrenade"
SWEP.ThrowDelay = 0.2

-- SWEP defaults, overriden by smokegrenade_config.lua.
SWEP.AllowCooking = true
SWEP.CookTime = 3
SWEP.ThrowForce = 1250

function SWEP:SetupVars()
	self.AllowCooking = SMOKEGRENADE_SETTINGS.AllowCooking
	self.CookTime = SMOKEGRENADE_SETTINGS.CookTime
	self.ThrowForce = SMOKEGRENADE_SETTINGS.ThrowForce
	self.detonate_timer = self.CookTime

	if (!SMOKEGRENADE_SETTINGS.AllowAmmo) then
		self.Primary.ClipSize = -1
		self.Primary.DefaultClip = -1
		self.Primary.Ammo = "none"

		self:SetClip1(1)
	end
end

function SWEP:Initialize()
	self:SetHoldType("grenade")
	self:SetDeploySpeed(1)

	self:SetupVars()
end

function SWEP:Holster()
	self:OnDrop()
	return true
end

function SWEP:OwnerChanged()
	self:OnDrop()
end

function SWEP:Deploy()
	self:OnDrop()
end

function SWEP:OnDrop()
	if (SERVER and self.m_bUsed) then
		self:Remove()
		return
	end

	self.m_fThrowIn = nil
	self.m_fPinPulled = nil
	self.m_fRealThrow = nil
	self.m_fRedeployIn = nil
end

function SWEP:Think()
	local ply = self.Owner
	if (!ply:Alive()) then
		return end

	local ct = CurTime()

	local cnt = ply:GetAmmoCount(self.Primary.Ammo)
	if (SERVER and cnt > 0) then
		ply:RemoveAmmo(cnt, self.Primary.Ammo)

		if (SMOKEGRENADE_SETTINGS.AllowAmmo) then
			self:SetClip1(self:Clip1() + cnt)
		end
	end

	if (self.m_fRedeployIn and ct >= self.m_fRedeployIn) then
		self:SendWeaponAnim(ACT_VM_DRAW)
		self.m_fRedeployIn = nil
	end

	if (self.m_fRealThrow and ct >= self.m_fRealThrow) then
		if (self.m_bUsed) then
			if (SERVER) then
				if (self:Clip1() <= 0) then
					self:Remove()
					ply:ConCommand("lastinv")
				else
					self.m_bUsed = nil
					self.m_fThrowIn = nil
					self.m_fPinPulled = nil
					self.m_fRealThrow = nil
				end
			end

			self.m_fRealThrow = nil

			return
		end

		self.m_fRealThrow = nil

		if (SERVER) then
			local proj = self:ThrowProjectile()
			if (self.AllowCooking and IsValid(proj)) then
				proj.m_fDieTime = ct + (self.m_fPinPulled + self.CookTime) - ct
			end

			self:TakePrimaryAmmo(1)
		end

		self.m_bUsed = true
		self.m_fRealThrow = ct + 0.33
		self.m_fRedeployIn = ct + 1
		self:SetNextPrimaryFire(CurTime() + 1)

		return
	end

	if (self.m_fThrowIn and ct >= self.m_fThrowIn) then
		if (!self.m_fPinPulled) then
			self.m_fPinPulled = CurTime()
		end

		if (!ply:KeyDown(IN_ATTACK) and !ply:KeyDown(IN_ATTACK2)) then
			self:SendWeaponAnim(ACT_VM_THROW)
			ply:SetAnimation(PLAYER_ATTACK1)

			self.m_fThrowIn = nil
			self.m_fRealThrow = ct + self.ThrowDelay
		elseif (self.AllowCooking and self.m_fPinPulled + self.CookTime <= ct) then
			if (SERVER) then
				self:ThrowProjectile(true)
				self:TakePrimaryAmmo(1)

				if (self:Clip1() <= 0) then
					self:Remove()
					ply:ConCommand("lastinv")
				else
					self.m_bUsed = nil
					self.m_fThrowIn = nil
					self.m_fPinPulled = nil
					self.m_fRealThrow = nil
				end
			end

			self.m_bUsed = true
			self.m_fThrowIn = nil
			self.m_fRealThrow = ct + 0.1
		end
	end
end

function SWEP:PrimaryAttack()
	if (self.m_fThrowIn or self.m_bUsed or self.m_fRealThrow) then
		return end

	if CLIENT and (!self.kos_SmokeWarn or self.kos_SmokeWarn > CurTime()) then
		chat.AddText(Color(255, 0, 0), "[ ! ]  ", Color(255, 255, 255), "Throwing smoke at bystanders labels you as ", Color(255, 100, 100), "OPTIONAL KOS", Color(255, 255, 255), " to them!")
		self.kos_SmokeWarn = 300 + CurTime()
	end

	self:SendWeaponAnim(ACT_VM_PULLPIN)
	self.m_fThrowIn = CurTime() + 0.9
	self.m_bTossing = false
end

function SWEP:SecondaryAttack()
	if (self.m_fThrowIn or self.m_bUsed or self.m_fRealThrow) then
		return end

	self:SendWeaponAnim(ACT_VM_PULLPIN)
	self.m_fThrowIn = CurTime() + 0.9
	self.m_bTossing = true
end

if (SERVER) then
	function SWEP:ThrowProjectile(detonate, novel)
		local ply = self.Owner

		local vShootPos = ply:GetShootPos()
		local throwfrom = vShootPos + ply:GetAimVector() * 32

		local t = {}
		t.start = vShootPos
		t.endpos = throwfrom
		t.filter = ply
		local tr = util.TraceLine(t)
		if (tr.Hit) then
			throwfrom = t.start
		end

		if (self.m_bTossing) then
			throwfrom = ply:LocalToWorld(ply:OBBCenter())
		end

		local projectile = ents.Create(self.ThrownProjectile)
		if (!IsValid(projectile)) then
			return end

		self.m_bUsed = true

		projectile:SetPos(throwfrom)
		projectile:SetAngles(Angle(math.random(0, 180), math.random(0, 180), math.random(0, 180)))
		projectile:SetOwner(ply)
		projectile:Spawn()
		projectile:Activate()

		if (detonate) then
			projectile:SetNoDraw(true)

			timer.Simple(0, function()
				if (IsValid(projectile)) then
					projectile:Explode(true)
				end
			end)
		else
			local phys = projectile:GetPhysicsObject()
			if (IsValid(phys)) then
				if (!novel) then
					if (self.m_bTossing) then
						phys:SetVelocityInstantaneous(self.Owner:GetAimVector() * 400 + Vector(0, 0, 150))
					else
						phys:ApplyForceCenter(ply:GetAimVector() * self.ThrowForce)
					end
				end
				phys:AddAngleVelocity(Vector(math.random(0, 180), math.random(0, 180), math.random(0, 180)))
			end
		end

		return projectile
	end
end
