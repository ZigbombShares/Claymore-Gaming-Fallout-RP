if (SERVER) then
	AddCSLuaFile("shared.lua")
	SWEP.HoldType = "ar2"
end


if (CLIENT) then
	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFOV			= 70
	SWEP.ViewModelFlip		= true
	SWEP.CSMuzzleFlashes		= true
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/
SWEP.MuzzleEffect			= "rg_muzzle_rifle" -- This is an extra muzzleflash effect
-- Available muzzle effects: rg_muzzle_grenade, rg_muzzle_highcal, rg_muzzle_hmg, rg_muzzle_pistol, rg_muzzle_rifle, rg_muzzle_silenced, none

SWEP.ShellEffect			= "rg_shelleject_rifle" -- This is a shell ejection effect
-- Available shell eject effects: rg_shelleject, rg_shelleject_rifle, rg_shelleject_shotgun, none

SWEP.MuzzleAttachment		= "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" -- Should be "2" for CSS models or "1" for hl2 models
/*-------------------------------------------------------*/

SWEP.Base 				= "kermite_base"

SWEP.Spawnable 			= false
SWEP.AdminSpawnable 		= false

SWEP.Primary.Sound 		= Sound("Weapon_AK47.Single")
SWEP.Primary.Recoil 		= 0
SWEP.Primary.Damage 		= 0
SWEP.Primary.NumShots 		= 0
SWEP.Primary.Cone 		= 0
SWEP.Primary.ClipSize 		= 0
SWEP.Primary.Delay 		= 0
SWEP.Primary.DefaultClip 	= 0
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 		= "smg1"

SWEP.Secondary.ClipSize 	= 0
SWEP.Secondary.DefaultClip 	= 0
SWEP.Secondary.Automatic 	= false
SWEP.Secondary.Ammo 		= "none"

function SWEP:Think()


		if (self:GetIronsights() == true) then
			self.DrawCrosshair = true
	else
			self.DrawCrosshair = false
	end

	end
