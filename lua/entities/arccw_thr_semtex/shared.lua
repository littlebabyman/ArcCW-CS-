ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Semtex"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/arccw/w_nade_semtex.mdl"
ENT.FuseTime = 5.5
ENT.ArmTime = 0
ENT.ImpactFuse = false

ENT.NextBeepTime = 0
ENT.BeepPitch = 80

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if !util.QuickTrace(data.HitPos, data.HitNormal, self).HitSky then
        self:EmitSound("weapons/arccw/c4/c4_plant.wav")

        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        self:SetPos(data.HitPos)
        data.PhysObject:Sleep()

        if data.HitEntity:IsWorld() then
            self:SetMoveType(MOVETYPE_NONE)
            self:SetPos(data.HitPos - (data.HitNormal *2 ))
        else
            self:SetParent(data.HitEntity)
        end
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        self:Detonate()
    end

    if CLIENT then
        if self.NextBeepTime <= CurTime() then
            self:EmitSound("weapons/arccw/c4/c4_beep2.wav", 75, self.BeepPitch)

            self.BeepPitch = self.BeepPitch + 5
            self.NextBeepTime = CurTime() + 1
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            util.Effect( "Explosion", effectdata)
            self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end
        util.BlastDamage(self, attacker, self:GetPos(), 400, 150)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        if self.NextBeepTime - 0.9 >= CurTime() and self.NextBeepTime - 1 <= CurTime() then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
                render.DrawSprite( self:GetPos(), 50, 50, Color(255, 0, 0) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end