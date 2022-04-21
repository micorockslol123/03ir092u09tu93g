_G.ScriptStop = true
for i,v in pairs(_G.EventTable) do
	v:Disconnect()
end
local Character = game.Players.LocalPlayer.Character["Cat"]
local Torso = Character.Torso
Character.Humanoid.WalkSpeed = 0
Character.Humanoid.JumpPower = 0
local Head = Character.Head
local Root = Character.HumanoidRootPart
local RA = Character["Right Arm"]
local LA = Character["Left Arm"]
local RL = Character["Right Leg"]
local LL = Character["Left Leg"]
local IN = Instance.new
Root.RootJoint:Destroy()
for i,v in pairs(Torso:GetDescendants()) do
    if v:IsA("Motor6D") then
        v:Destroy()
    end
end

for i,v in pairs(Character:GetDescendants()) do
    if v:IsA("ManualWeld") then
        v:Destroy()
    end
end
for i,v in pairs(Torso:GetDescendants()) do
    if v:IsA("Weld") then
        v:Destroy()
    end
end
for i,v in pairs(Torso:GetDescendants()) do
    if v:IsA("PointLight") then
        v:Destroy()
    end
end
for i,v in pairs(Character:GetChildren()) do
    if v.Name ~= "Head" and v.Name ~= "Torso" and v.Name ~= "Right Arm" and v.Name ~= "Left Arm" and v.Name ~= "Right Leg" and v.Name ~= "Left Leg" and v.Name ~= "HumanoidRootPart" and v.Name ~= "Humanoid" and v.Name ~= "Animate" and v.Name ~= "Animator" and v.Name ~= "BodyColors" and v.Name ~= "Pants" and v.Name ~= "Shirt" then
        v:Destroy()
	end
end
    	    for i,v in pairs(game.Players.LocalPlayer.Character.Hats:GetChildren()) do
        if v:IsA("Accessory") then
			local j = v:Clone()
			j.Parent = Character
			j.Handle.AccessoryWeld:Destroy()
			
			
            local function addAccessory(character, accessory)
                local attachment = accessory.Handle:FindFirstChildOfClass("Attachment")
                local weld = Instance.new("Weld")
                weld.Name = "AccessoryWeld"
                weld.Part0 = accessory.Handle
                if attachment then
                    local other = character:FindFirstChild(tostring(attachment), true)
                    weld.C0 = attachment.CFrame
                    weld.C1 = other.CFrame
                    weld.Part1 = other.Parent
                else
                    weld.C1 = CFrame.new(0, character.Head.Size.Y / 2, 0) * accessory.AttachmentPoint:inverse()
                    weld.Part1 = character.Head
                end
                accessory.Handle.CFrame = weld.Part1.CFrame * weld.C1 * weld.C0:inverse()
                accessory.Parent = character
                weld.Parent = accessory.Handle
            end
            addAccessory(Character, j)
        end
    end

Character.Animate.Disabled = false
local N = IN("Motor6D", Torso)
N.Name = "Neck"
N.Part0 = Torso
N.Part1 = Head
N.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
N.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)

local RJ = IN("Motor6D", Root)
RJ.Name = "RootJoint"
RJ.Part0 = Root
RJ.Part1 = Torso
RJ.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RJ.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
local RS = IN("Motor6D", Torso)
RS.Name = "Right Shoulder"
RS.Part0 = Torso
RS.Part1 = RA
RS.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
RS.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

local LS = IN("Motor6D", Torso)
LS.Name = "Left Shoulder"
LS.Part0 = Torso
LS.Part1 = LA
LS.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LS.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

local RH = IN("Motor6D", Torso)
RH.Name = "Right Hip"
RH.Part0 = Torso
RH.Part1 = RL
RH.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
RH.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

local LH = IN("Motor6D", Torso)
LH.Name = "Left Hip"
LH.Part0 = Torso
LH.Part1 = LL
LH.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LH.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
wait(1)
for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
_G.ScriptStop = false
for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
for i,v in pairs(Character.Humanoid:GetChildren()) do
	if v:IsA("Animator") then
		v:Destroy()
	end
	local newanim = Instance.new("Animator", v.Parent)
end
for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
Character.Humanoid.WalkSpeed = 16
Character.Humanoid.JumpPower = 50

for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
if _G.BulletEnabled == true then
pcall(function()
_G.Somethinggggggg:Disconnect()
local Bullet = game.Players.LocalPlayer.Character:FindFirstChild("Bullet") or game.Players.LocalPlayer.Character:FindFirstChild("Left Arm") or game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
Bullet.BodyPosition:Destroy()
_G.Disconnect = false
Bullet.SelectionBox:Destroy()
Bullet.Transparency = 0	
if game.Players.LocalPlayer.Character:FindFirstChild("Bullet") then
game.Players.LocalPlayer.Character:FindFirstChild("Bullet").Transparency = 1				
end
end)
end
for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end

