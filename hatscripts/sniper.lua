
TheHatLol = "Sniper"
TheHatLol2 = TheHatLol

if not workspace[game.Players.LocalPlayer.Name]:FindFirstChild(TheHatLol) then
			local sound = Instance.new("Sound", game.StarterGui)
		sound.SoundId = "rbxassetid://8426701399"
		sound.Volume = 3
		sound:Play()    
		game.StarterGui:SetCore("SendNotification", {
			Title = "Project Cat: Reborn",
			Text = "Missing Hat: ".. TheHatLol
		})
		wait(2)
		sound:Destroy()
		return
end
if not workspace[game.Players.LocalPlayer.Name]:FindFirstChild(TheHatLol2) then
			local sound = Instance.new("Sound", game.StarterGui)
		sound.SoundId = "rbxassetid://8426701399"
		sound.Volume = 3
		sound:Play()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Project Cat: Reborn",
			Text = "Missing Hat: ".. TheHatLol2
		})
		wait(2)
		sound:Destroy()
		return
end
if not workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Cat") then
			local sound = Instance.new("Sound", game.StarterGui)
		sound.SoundId = "rbxassetid://8426701399"
		sound.Volume = 3
		sound:Play()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Project Cat: Reborn",
			Text = "Not Reanimated!, Reanimate please."
		})
		wait(2)
		sound:Destroy()
		return
end
local function Align(Part0,Part1,Position,Orientation)
	local Att = Instance.new("Attachment")
	Att.Parent = Part0
	local Att2 = Att:Clone()
	Att2.Parent = Part1
	Att.Position = Position or Vector3.new(0,0,0)
	Att.Orientation = Orientation or Vector3.new(0,0,0)
	local Pos = Instance.new("AlignPosition")
	Pos.Parent = Part0
	Pos.MaxForce = math.pow(124,124) + 1e9
	Pos.Responsiveness = 200
	local Ori = Instance.new("AlignOrientation")
	Ori.Parent = Part0
	Ori.MaxTorque = math.pow(124,124) + 1e9
	Ori.Responsiveness = 200
		
	Pos.Attachment0 = Att
	Pos.Attachment1 = Att2
	Ori.Attachment0 = Att
	Ori.Attachment1 = Att2
	if Part0.Name == "Handle" then
		Part0:BreakJoints()
	end
end
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/stev15291/catv2/main/misc/loadlibrary.lua"))()
local attack = false

if _G.BulletEnabled == true then
local Bullet = game.Players.LocalPlayer.Character:FindFirstChild("Bullet") or game.Players.LocalPlayer.Character:FindFirstChild("Left Arm") or game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
local Char = game.Players.LocalPlayer.Character["Cat"]
local FlingTrigger;
_G.Disconnect = true
local HighLight = Instance.new("SelectionBox", Bullet)
HighLight.Adornee = Bullet
HighLight.Color3 = Color3.fromRGB(65,205,102)
HighLight.LineThickness = 0.3
Bullet.Transparency = 1
game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
local BP = Instance.new("BodyPosition", Bullet)
BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BP.D = 125
BP.P = 50000
local Mouse = game.Players.LocalPlayer:GetMouse()
local MouseHolding = false
Mouse.Button1Down:Connect(function()
MouseHolding = true
end)
Mouse.Button1Up:Connect(function()
MouseHolding = false
end)
_G.Somethinggggggg = game:GetService("RunService").Heartbeat:Connect(function()
Bullet.RotVelocity = Vector3.new(5000,5000,5000)
if attack then
   pcall(function()
    if game.Players:GetPlayerFromCharacter(Mouse.Target.Parent) then
        if Mouse.Target.Parent.Name ~= game.Players.LocalPlayer.Name then
            if Mouse.Target ~= nil then
            BP.Position = Mouse.Target.Parent.HumanoidRootPart.CFrame.p or Mouse.Target.Parent.Head.CFrame.p
            end
        else
            if Mouse.Target ~= nil then
            BP.Position = Mouse.Hit.p
            end
        end
    elseif game.Players:GetPlayerFromCharacter(Mouse.Target.Parent.Parent) then
        if Mouse.Target.Parent.Parent.Name ~= game.Players.LocalPlayer.Name then
            if Mouse.Target ~= nil then
            BP.Position = Mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p or Mouse.Target.Parent.Parent.Head.CFrame.p
            end
        else
            if Mouse.Target ~= nil then
            BP.Position = Mouse.Hit.p
            end
        end
    else
        if Mouse.Target ~= nil then
        BP.Position = Mouse.Hit.p
        end
    end
    end)
    else
    BP.Position = Char.Torso.Position + Vector3.new(0,-7,0)
    end
end)
end
Ply = game.Players.LocalPlayer
Char = Ply.Character["Cat"]
Tor = Char.Torso
He = Char.Head
Ne = Tor.Neck
Hu = Char.Humanoid
LA = Char["Left Arm"] 
LL = Char["Left Leg"] 
RA = Char["Right Arm"] 
RL = Char["Right Leg"]
LS = Tor["Left Shoulder"] 
RS = Tor["Right Shoulder"] 
Char.Animate.Disabled = true
LH = Tor["Left Hip"] 
RH = Tor["Right Hip"] 
Combo = 1
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RP = Char.HumanoidRootPart
RJ = RP.RootJoint
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)
equipped = false
local Anim = "Idle"
Effects = { }
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Char,
	Name = "WeaponModel",
}

RS.Parent = nil 
LS.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Tor ,
	C0 = CFrame.new(1.5, 0.5, 0),
	C1 = CFrame.new(0, 0.5, 0), 
	Part1 = RA ,
	Parent = Tor ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Tor ,
	C0 = CFrame.new(-1.5, 0.5, 0),
	C1 = CFrame.new(0, 0.5, 0) ,
	Part1 = LA ,
	Parent = Tor ,
}
	
mouse = Ply:GetMouse()

local function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
local function CreatePart(FF, Par, Mat, Ref, Tra, BC, Nam, Siz)
	local Part = Create("Part"){
		formFactor = FF,
		Parent = Par,
		Reflectance = Ref,
		Transparency = Tra,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BC)),
		Name = Nam,
		Size = Siz,
		Position = Tor.Position,
		Material = Mat,
	}
	RemoveOutlines(Part)
	return Part
end
	
local function CreateMesh(Ms, Par, MType, MId, OS, Sca)
	local Msh = Create(Ms){
		Parent = Par,
		Offset = OS,
		Scale = Sca,
	}
	if Ms == "SpecialMesh" then
		Msh.MeshType = MType
		Msh.MeshId = MId
	end
end
	
local function CreateWeld(Par, PartA, PartB, CA, CB)
	local Weld = Create("Weld"){
		Parent = Par,
		Part0 = PartA,
		Part1 = PartB,
		C0 = CA,
		C1 = CB,
	}
	return Weld
end
	
local function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Create("Sound"){
			Parent = par or workspace,
			Volume = vol,
			Pitch = pit or 1,
			SoundId = id,
		}
		wait() 
		sou:play() 
	end))
end
 
local function clerp(a, b, t)
	return a:lerp(b, t)
end

local function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	
end
local function MagnitudeDamage(Part, magni, mindam, maxdam, Color1, Color2, HitSound)

end

Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "Handle", Vector3.new(0.216133296, 0.432266444, 0.200000003))
Handleweld = CreateWeld(m, RA, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.03214836, -0.278110504, -0.0978469849, 0, 0.999999702, -2.98023224e-008, 0, -2.98023188e-008, -0.999999821, -1, 4.37113847e-008, -1.77635684e-015))
CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540333092))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "FakeHandle", Vector3.new(0.216133296, 0.432266444, 0.200000003))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 4.37113812e-008, 4.73655636e-016, 1))
Barrel = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "Barrel", Vector3.new(0.324199915, 0.200000003, 0.216133296))
Barrelweld = CreateWeld(m, FakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000385284424, 5.45991993, 0.648399353, 1.88395493e-016, 1.00281931e-024, -1, 0.999999642, 0, 4.37113812e-008, 0, -0.999999642, -4.73655636e-016))
CreateMesh("CylinderMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.567349613, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.324199826, 0.324199826, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.378201485, -0.162090302, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.216133282, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.03202057, 0.162498474, 0.864542007, 5.96045453e-008, 0.999996662, 2.34803412e-008, 4.76836078e-007, 6.32193187e-009, 0.999997854, 0.999997139, -2.98022425e-008, -4.3312528e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.08066642, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648406029, -0.594371796, -0.161685944, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.756466568, 0.200000003, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.8910985, -0.70243454, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.45885229, -0.832115173, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.75646615, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.40486634, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.810516357, -0.81047821, 0.162475586, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.216133282, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.37740993, -0.594367981, 0.162475586, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0540370941, -0.162101746, 0, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 4.37113812e-008, 4.73655636e-016, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.369587988, 0.358781129, 0.748901784))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.216133282, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.37741232, -0.702438354, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really black", "Part", Vector3.new(0.432266563, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000377655029, -1.56698084, -1.0320282, -4.17232428e-007, 6.32132613e-009, -0.999997616, -0.999997139, 2.98022425e-008, 2.99015426e-007, -8.70414851e-014, 0.999996722, -2.34809274e-008))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.432266563, 2.48553157, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000385284424, 3.51209116, 0.648399353, 1.78814986e-007, -6.32150376e-009, -1, 0.999999642, -5.96046341e-008, 2.22526424e-007, -5.96046341e-008, -0.999999642, 6.32149666e-009))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.216133282, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.37741327, -0.486289978, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.756466269, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.45884228, 0.0540428162, 0.000385284424, 0.999999583, -4.47034729e-008, 4.37113776e-008, 4.47034729e-008, 0.999999583, 2.42770696e-015, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.324199975, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000377655029, -1.02661896, -0.162124634, 4.37113812e-008, 4.73655636e-016, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.218294606, 0.239907846, 1.02987504))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.485533, 0.216133222, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.02665424, -0.324203491, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(2.16133285, 0.200000003, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.18871307, -0.486282349, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.216133282, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000408172607, 1.19412231, 0.869961739, 4.17229757e-007, 6.32150021e-009, 0.999997854, 8.70414851e-014, -0.999996722, -2.34808173e-008, 0.999997079, 1.49012358e-008, -3.73518958e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.324199975, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000377655029, -1.02661514, -0.378243446, 4.37113812e-008, 4.73655636e-016, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.229101285, 0.250714511, 2.71571469))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.324199975, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000385284424, -1.02661896, 1.56696892, -1.93715053e-007, 9.32587256e-015, -0.999999702, 0, 0.999999642, 4.73655636e-016, 0.999999404, 4.47034836e-008, -6.05967614e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.218294606, 0.239907846, 1.02987504))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0540370941, -0.162101746, 0, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 4.37113812e-008, 4.73655636e-016, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.369587988, 0.369587809, 0.748901784))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.29679966, 0.200000003, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.864494324, -0.378234863, 0.000385284424, 0.999999583, -4.47034729e-008, 4.37113776e-008, 4.47034729e-008, 0.999999583, 2.42770696e-015, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.270159721, -0.832111359, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.75646615, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(1.08066642, 0.200000003, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.72902441, -0.594367981, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.324199975, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000385284424, -1.02661514, 1.35084629, -1.93715053e-007, 9.32587256e-015, -0.999999702, 0, 0.999999642, 4.73655636e-016, 0.999999404, 4.47034836e-008, -6.05967614e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.229101285, 0.250714511, 2.71571469))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.432266563, 0.648399651, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, 0.864570618, -1.03203201, 3.57626845e-007, 6.32133856e-009, 0.999997854, 0.999997139, -2.98022425e-008, -3.1391599e-007, -8.70414851e-014, 0.999996722, 2.34809345e-008))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.216133282, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.37740993, -0.594367981, -0.161708832, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.08066642, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648406029, -0.594371796, 0.162475586, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.324199975, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0540428162, -0.486282349, 0.162475586, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.864533126, 0.540332973, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.972568512, -0.0540428162, 0.000385284424, 0.999999583, -4.47034729e-008, 4.37113776e-008, 4.47034729e-008, 0.999999583, 2.42770696e-015, 0, -0, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.40486634, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.810501099, -0.810474396, -0.161685944, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Really black", "Part", Vector3.new(0.432266563, 0.200000003, 0.216133296))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, 0.162106514, -1.0320282, 3.57626845e-007, 6.32133856e-009, 0.999997854, 0.999997139, -2.98022425e-008, -3.1391599e-007, -8.70414851e-014, 0.999996722, 2.34809345e-008))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.216134712, 0.216134697, 0.216134712))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000408172607, 0.864553452, -1.03203201, 3.57626561e-007, 6.59261232e-008, 1, 0.999999642, 0, -3.1391528e-007, 0, 0.999999642, -6.59261374e-008))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.40486634, 0.200000003, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.810516357, -0.70243454, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.324199975, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0540428162, -0.486282349, -0.161685944, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.324199915, 0.756466269, 0.432266533))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000385284424, 5.1330142, 0.648399353, 0, 0, -1, 0.999999642, 0, 4.37113812e-008, 0, -0.999999642, -4.73655636e-016))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.432266563, 0.216133222, 0.864533186))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, -0.324199677, -0.972576141, 2.98023117e-008, 0, 0.999999702, 0, -0.999999642, -4.73655636e-016, 0.999999285, 1.49011701e-008, 1.3909041e-008))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.432266444, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.161708832, -0.648399353, -2.86102295e-005, 0, -0, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.432266563, 0.216133192, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, -0.108055115, -0.432257652, 2.98023117e-008, 0, 0.999999702, 0, -0.999999642, -4.73655636e-016, 0.999999285, 1.49011701e-008, 1.3909041e-008))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.162475586, -0.486286163, 0.32416153, 0, -0, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.540332973, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.161708832, -0.810497284, 1.62095213, 1.49011559e-008, 0, -0.999999762, 0, 0.999999642, 4.73655636e-016, 0.999999404, 4.47034836e-008, 5.86125317e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.540332973, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.432266384, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.162475586, -0.648399353, -2.86102295e-005, 0, -0, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.162475586, -0.810497284, 1.62095213, 1.49011559e-008, 0, -0.999999762, 0, 0.999999642, 4.73655636e-016, 0.999999404, 4.47034836e-008, 5.86125317e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.540332973, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.432266563, 0.216133237, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, 0.324203491, 2.37740946, 1.06338617e-018, 5.01342412e-010, 0.999999404, 1.49011701e-008, -0.999999285, 5.01343078e-010, 0.999999285, 1.49011701e-008, 4.37113634e-008))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.432266563, 0.216133222, 0.216133296))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000385284424, 0.108070374, -0.108057022, 2.98023117e-008, 0, 0.999999702, 0, -0.999999642, -4.73655636e-016, 0.999999285, 1.49011701e-008, 1.3909041e-008))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.216133267))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.161708832, -0.486286163, 0.32416153, 0, -0, 1, 0, 0.999999642, 4.73655636e-016, -0.999999642, 0, -4.37113812e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 0.540332973, 1))
MagHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "MagHandle", Vector3.new(0.432266504, 0.324199826, 0.216133296))
MagHandleweld = CreateWeld(m, FakeHandle, MagHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648423195, -0.0540428162, 0.000385284424, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 0, -0, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.324199826, 0.216133296))
Partweld = CreateWeld(m, MagHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.270163536, 0, 0, 0.999999642, 0, 0, 0, 0.999999642, -0, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.324199826, 0.216133296))
Partweld = CreateWeld(m, MagHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.270174026, 0, 0, 0.999999642, 0, 0, 0, 0.999999642, -0, 0, -0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.540333211, 1, 1))
BoltHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BoltHandle", Vector3.new(0.216133282, 1.40486586, 0.216133267))
BoltHandleweld = CreateWeld(m, FakeHandle, BoltHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.540328979, -0.486276627, -0.000385284424, -4.47034729e-008, -0.999999583, -2.42770696e-015, -0.999999642, 0, -4.37113812e-008, 0, 0, -0.99999994))
CreateMesh("CylinderMesh", BoltHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.216133282, 0.216133252, 0.216133267))
Partweld = CreateWeld(m, BoltHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.70238018, 0, 0.999999523, 4.47034729e-008, 0, 4.47034729e-008, 0.999999642, 0, 0, 0, 0.999999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.324199915, 0.324199826, 0.200000003))
Partweld = CreateWeld(m, BoltHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.015832901, 0.146270752, 0.648381233, 0.707106292, 5.08757338e-008, 0.707106531, 0.707106411, -8.72889849e-009, -0.707106411, 8.94069458e-008, 0.999999404, -5.09424458e-009))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540333092))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.324199915, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, BoltHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0158443451, 0.362377167, 0.648385048, 0.707106292, 5.08757338e-008, 0.707106531, 0.707106411, -8.72889849e-009, -0.707106411, 8.94069458e-008, 0.999999404, -5.09424458e-009))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.540332973, 0.540333092))
ScopeZoom = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Bright violet", "ScopeZoom", Vector3.new(0.216133296, 0.200000003, 0.200000003))
ScopeZoomweld = CreateWeld(m, FakeHandle, ScopeZoom, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.72752714, -1.03763962, 0, 0.999999642, 0, 4.37113812e-008, 0, 0.999999642, 4.73655636e-016, 4.37113812e-008, 4.73655636e-016, 1))
for i,v in pairs(Char:GetDescendants()) do
	if v:IsA("BasePart") then v.Transparency = 1 end
end
local hat = Char["Sniper"].Handle
Align(hat,Handle,Vector3.new(-0.8,-0.2,0),Vector3.new(-0, -180, 0))
local PE1 = Create("ParticleEmitter"){
	Parent = Barrel,
	Color = ColorSequence.new(BrickColor.new("Dark stone grey").Color),
	Transparency = NumberSequence.new(0),
	Size = NumberSequence.new(.5),
	Texture = "rbxassetid://257430870",
	Lifetime = NumberRange.new(.1),
	Rate = 100,
	VelocitySpread = 180,
	Rotation = NumberRange.new(0),
	Speed = NumberRange.new(0),
	LightEmission = .6,
	LockedToPart = true,
	Enabled = false
}

local PE2 = PE1:Clone()
PE2.Size = NumberSequence.new(.7)
PE2.LightEmission = 1
PE2.Texture = "rbxassetid://87729590"

local function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	Effects[#Effects + 1] = {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3
	}
end

local Ammo = 10
local Depleted = false
local something
local function Shoot(asd, spread1, spread2)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2 + spread)
	num = 30
	Ammo = Ammo - 1
	if Ammo == 0 then
		Depleted = true
	end
	coroutine.resume(coroutine.create(function(Spreaded) 
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RP.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude 
			CylinderEffect(BrickColor.new("Dark stone grey"), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, mag * 5, 3, .5, 1, .5, 0.2)
			MainPos = MainPos + (MouseLook.lookVector * 50)
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = CreatePart(3, workspace, "Neon", 0, 1, BrickColor.new("Dark stone grey"), "Reference", Vector3.new())
				ref.Anchored = true
				ref.CFrame = CFrame.new(pos)
				MagnitudeDamage(ref, 5, 999999999, 999999999, BrickColor.new("Dark stone grey"), BrickColor.new("Navy blue") , "rbxassetid://199149297")
				game:GetService("Debris"):AddItem(ref, 1) 
			end
		until num <= 0
	end))
end

local Aiming = false
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 1e7
gyro.D = 1e3
gyro.MaxTorque = Vector3.new(0,1e7,0)


local Crouching = false

local function Fire()
	if Aiming == true then
		attack = true
		CreateSound("rbxassetid://132572951", Barrel, 1, .9)
		PE1.Enabled = true
		PE2.Enabled = true
		Shoot(Barrel, 0, 0)
		for i = 0, 1, 0.2 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(-10), math.rad(90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(-90)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(140)), .5)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
		PE1.Enabled = false
		PE2.Enabled = false
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
		Handleweld.Part0 = LA
		Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Handleweld.C1 = CFrame.new(-0.737663269, -0.281144857, 0.33117196, 0.00916702952, 0.939647615, 0.342020333, 0.999940991, -0.0106014106, 0.00232372736, 0.00580918044, 0.341978878, -0.939689875)
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
		CreateSound("rbxassetid://146740582", BoltHandle, .7, 1)
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			BoltHandleweld.C0 = clerp(BoltHandleweld.C0, CFrame.new(.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
		end
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			BoltHandleweld.C0 = clerp(BoltHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
		end
		for i = 0, 1, 0.3 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .4)
			RW.C0 = clerp(RW.C0, CFrame.new(.51, 0.51, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .4)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.51, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .4)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
		end
		Handleweld.Part0 = RA
		Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Handleweld.C1 = CFrame.new(1.03214836, -0.278110504, -0.0978469849, 0, 0.999999702, -2.98023224e-008, 0, -2.98023188e-008, -0.999999821, -1, 4.37113847e-008, -1.77635684e-015)
		attack = false
	end
end

local Zoomed = false

local function Reload()
	attack = true
	for i = 0, 1, 0.1 do
		wait()
		if Crouching == false and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		elseif Crouching == true and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		end
		Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-50)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(120)), .3)
		if Crouching == false and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
		elseif Crouching == true and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
		end
		FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("rbxassetid://131045401", FakeHandle, 1, 1)
	MagHandleweld.Part0 = LA
	MagHandleweld.C0 = CFrame.new(.5, -1, .6) * CFrame.Angles(1.5, 0, 1.5)
	for i = 0, 1, 0.08 do
		wait()
		if Crouching == false and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		elseif Crouching == true and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		end
		Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(5), math.rad(50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-50)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.3) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(20)), .3)
		if Crouching == false and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
		elseif Crouching == true and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
		end
		FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("rbxassetid://131045429", FakeHandle, 1, 1)
	for i = 0, 1, 0.08 do
		wait()
		if Crouching == false and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		elseif Crouching == true and Aiming == true then 
			RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
		end
		Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.3) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(100)), .5)
		if Crouching == false and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
		elseif Crouching == true and Aiming == true then
			RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
		end
		FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	end
	MagHandleweld.Part0 = FakeHandle
	MagHandleweld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
	Ammo = 10
	if Depleted == true then
		Depleted = false
		Handleweld.Part0 = LA
		Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Handleweld.C1 = CFrame.new(-0.737663269, -0.281144857, 0.33117196, 0.00916702952, 0.939647615, 0.342020333, 0.999940991, -0.0106014106, 0.00232372736, 0.00580918044, 0.341978878, -0.939689875)
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
		CreateSound("rbxassetid://146740582", BoltHandle, .7, 1)
		for i = 0, 1, 0.1 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			BoltHandleweld.C0 = clerp(BoltHandleweld.C0, CFrame.new(.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
		end
		for i = 0, 1, 0.3 do
			wait()
			if Crouching == false and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			elseif Crouching == true and Aiming == true then 
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
			end
			Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(80)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -.6) * CFrame.Angles(math.rad(80), math.rad(-30), math.rad(-90)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(70)), .3)
			if Crouching == false and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
			elseif Crouching == true and Aiming == true then
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
			end
			FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			BoltHandleweld.C0 = clerp(BoltHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
		end
	end
	Handleweld.Part0 = RA
	Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Handleweld.C1 = CFrame.new(1.03214836, -0.278110504, -0.0978469849, 0, 0.999999702, -2.98023224e-008, 0, -2.98023188e-008, -0.999999821, -1, 4.37113847e-008, -1.77635684e-015)
	attack = false
end

table.insert(_G.EventTable,mouse.Button1Down:connect(function()
	if attack == false and Depleted == false then
		Fire()
	end
end))
table.insert(_G.EventTable,mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k == "r" and attack == false then
		Reload()
	elseif k == "f" and Aiming == false then
		Aiming = true
	elseif k == "f" and Aiming == true then
		Aiming = false
	elseif k == "c" and Aiming == true and Crouching == false then
		Crouching = true
	elseif k == "c" and Aiming == true and Crouching == true then
		Crouching = false
	elseif k == "z" and Aiming == true and Zoomed == false then
		Zoomed = true
		CreateSound("rbxassetid://180144779", FakeHandle, 1, 1)
		for i = 0, 1, 0.2 do 
			wait()
			cam.FieldOfView = cam.FieldOfView - 5
		end
		Ply.CameraMode = "LockFirstPerson"
        --Ply.DevEnableMouseLock = false
		cam.FieldOfView = 10
		cam.CameraSubject = ScopeZoom
		mouse.Icon = "rbxassetid://18006519"
	elseif k == "z" and Aiming == true and Zoomed == true then
		Zoomed = false
		CreateSound("rbxassetid://190623951", FakeHandle, 1, 1)
		for i = 0, 1, 0.2 do 
			wait()
			cam.FieldOfView = cam.FieldOfView + 5
		end
		Ply.CameraMode = "Classic"
        --Ply.DevEnableMouseLock = true
		cam.FieldOfView = 80
		cam.CameraSubject = Hu
		mouse.Icon = ""
	end
end))


local sine = 0
local change = 1
local val = 0

while true do
	if _G.ScriptStop == true then
		Aiming = false
		Zoomed = false
		Equipped = false
		Crouching = false
		Depleted = false
		attack = false
		break
	end
	wait()
	sine = sine + change
	local torvel = (RP.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RP.Velocity.y
	hitfloor, posfloor = rayCast(RP.Position, (CFrame.new(RP.Position, RP.Position - Vector3.new(0, 1, 0))).lookVector, 4, Char)
	if equipped == true or equipped == false then
		if Aiming == true then
			if Crouching == false and Aiming == true then
				Hu.WalkSpeed = 10
			elseif Crouching == true and Aiming == true then
				Hu.WalkSpeed = 5
			end
			gyro.Parent = RP
			local gunpos = Vector3.new(mouse.Hit.p.x, He.Position.Y, mouse.Hit.p.z)
			offset = (Tor.Position.y - mouse.Hit.p.y) / 60
			local mag = (Tor.Position - mouse.Hit.p).magnitude / 80
			offset = offset / mag 
			gyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p -RP.CFrame.p).unit * 100)
		elseif Aiming == false then
			Hu.JumpPower = 50
			Hu.WalkSpeed = 16
			gyro.Parent = nil
		end
		if RP.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false and Aiming == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -.2) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.4) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(60)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(-30)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(30)), .3)
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), .3)
			elseif attack == false and Aiming == true then
				if Crouching == false and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				elseif Crouching == true and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				end
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(.51, 0.51, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.51, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .4)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				if Crouching == false and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				elseif Crouching == true and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
				end
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
			end
		elseif RP.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false and Aiming == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -.2) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.4) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(100)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(30)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(-30)), .3)
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), .3)
			elseif attack == false and Aiming == true then
				if Crouching == false and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				elseif Crouching == true and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				end
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(.51, 0.51, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.51, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .4)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				if Crouching == false and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				elseif Crouching == true and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
				end
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false and Aiming == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-50)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, 0) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.4) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(70)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(.9, -.5, .2) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-50), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1, -1) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-50), math.rad(50)), .3)
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), .3)
			elseif attack == false and Aiming == true then
				if Crouching == false and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				elseif Crouching == true and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				end
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(.51, 0.51, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.51, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .4)
				if Crouching == false and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				elseif Crouching == true and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
				end
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false and Aiming == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -.2) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.4) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(50)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), .3)
			elseif attack == false and Aiming == true then
				if Crouching == false and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				elseif Crouching == true and Aiming == true then 
					RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .4)
				end
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(90)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(.51, 0.51, -.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.51, 0) * CFrame.Angles(math.rad(0), math.rad(160), math.rad(90)), .4)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				if Crouching == false and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
				elseif Crouching == true and Aiming == true then
					RH.C0 = clerp(RH.C0, CFrame.new(1, -.1, -.5) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -.1, -.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(50)), .4)
				end
				FakeHandleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
			end
		end
		
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
