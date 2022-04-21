--if not _G.EventTable then _G.EventTable = {} end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cat") then
    game.StarterGui:SetCore("SendNotification",{
        Title = "Project: Cat - Reborn",
        Text = "Couldn't Reanimate (Already Running!)",
    })
    return
end
    _G.BulletEnabled = false
    if not _G.Disconnect then _G.Disconnect = false end

local Loops = {};
local RunService = game:GetService("RunService");
local Player = game:GetService("Players").LocalPlayer;
local Character = Player["Character"];
   local Fling = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid");
Character.Archivable = true
local fldr = Instance.new("Folder", workspace)
fldr.Name = "Hats"
    for i,v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then
			local j = v:Clone()
			j.Parent = fldr
			j.Handle.Transparency = 1
	end
end
    local Clone = game:GetObjects("rbxassetid://8440552086")[1]
    Clone.Parent = workspace
    Clone.Name = "Cat"
    for i,v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then
			local j = v:Clone()
			j.Parent = Clone
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
            addAccessory(Clone, j)
        end
    end

local Clone = workspace["Cat"];
local CloneHumanoid = Clone:FindFirstChildWhichIsA("Humanoid")

Character.Animate.Disabled = true
for i,v in pairs(Clone:GetDescendants()) do
    if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Decal") then
        v.Transparency = 1
    end
end
table.insert(Loops, RunService.Stepped:Connect(function()
    -- Stop Anims
    for i, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
        v:Stop()
    end
    -- Client Side Noclip (To Make The Characters Merge On CFrame Without being flung.)
    for i, v in pairs(Character:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("MeshPart") then
            v.CanCollide = false
        end
    end
    for i, v in pairs(Clone:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("MeshPart") then
            v.CanCollide = false
        end
    end
    -- Movement
    CloneHumanoid:Move(Humanoid.MoveDirection,false)
end))
table.insert(Loops, game:GetService("UserInputService").JumpRequest:Connect(function()
    -- Jumping
    CloneHumanoid.Jump = true
    CloneHumanoid.Sit = false
end))
for i,v in pairs(Character:GetDescendants()) do
    if v:IsA("Motor6D") and v.Name ~= "Neck" then
        v:Destroy()
    end
    if v:IsA("Accessory") then
        v.Handle:BreakJoints()
    end
end
Clone.Parent = Character
local Clone = Character["Cat"];
fldr.Parent = Character
Clone.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame
if Humanoid.RigType == Enum.HumanoidRigType.R6 then
    Character.HumanoidRootPart:Destroy()
end
table.insert(Loops, RunService.Heartbeat:Connect(function()
    -- Velocity
    for i,v in pairs(Character:GetChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Torso" then
            v.Velocity = Vector3.new(-27.999,0,0)
        elseif v:IsA("MeshPart") and v.Name ~= "UpperTorso" then
            v.Velocity = Vector3.new(-27.999,0,0)
        elseif v:IsA("Accessory") then
            v.Handle.Velocity = Vector3.new(-27.999,0,0)
        end
    end
    Fling.Velocity = Vector3.new(1111,1111,1111)
    -- CFraming
    if Humanoid.RigType == Enum.HumanoidRigType.R6 then
        Character["Torso"].CFrame = Clone["Torso"].CFrame
        Character["Right Arm"].CFrame = Clone["Right Arm"].CFrame
        Character["Left Arm"].CFrame = Clone["Left Arm"].CFrame
        Character["Right Leg"].CFrame = Clone["Right Leg"].CFrame
        Character["Left Leg"].CFrame = Clone["Left Leg"].CFrame
    end
    
    if Humanoid.RigType == Enum.HumanoidRigType.R15 then
        Character["UpperTorso"].CFrame = Clone["Torso"].CFrame * CFrame.new(0, 0.195, 0)
        Character.HumanoidRootPart.CFrame = Character["UpperTorso"].CFrame + Vector3.new(0, -0.08, 0)
        Character["LowerTorso"].CFrame = Clone["Torso"].CFrame * CFrame.new(0, -0.76, 0)

        Character["RightUpperArm"].CFrame = Clone["Right Arm"].CFrame * CFrame.new(0, 0.41, 0)
        Character["RightLowerArm"].CFrame = Clone["Right Arm"].CFrame * CFrame.new(0, -0.16, 0)
        Character["RightHand"].CFrame = Clone["Right Arm"].CFrame * CFrame.new(0, -0.8, 0)
    
        Character["LeftUpperArm"].CFrame = Clone["Left Arm"].CFrame * CFrame.new(0, 0.41, 0)
        Character["LeftLowerArm"].CFrame = Clone["Left Arm"].CFrame * CFrame.new(0, -0.16, 0)
        Character["LeftHand"].CFrame = Clone["Left Arm"].CFrame * CFrame.new(0, -0.8, 0)
    
        Character["RightUpperLeg"].CFrame = Clone["Right Leg"].CFrame * CFrame.new(0, 0.6, 0)
        Character["RightLowerLeg"].CFrame = Clone["Right Leg"].CFrame * CFrame.new(0, -0.15, 0)
        Character["RightFoot"].CFrame = Clone["Right Leg"].CFrame * CFrame.new(0, -0.85, 0)
    
        Character["LeftUpperLeg"].CFrame = Clone["Left Leg"].CFrame * CFrame.new(0, 0.6, 0)
        Character["LeftLowerLeg"].CFrame = Clone["Left Leg"].CFrame * CFrame.new(0, -0.15, 0)
        Character["LeftFoot"].CFrame = Clone["Left Leg"].CFrame * CFrame.new(0, -0.85, 0)
    end
    for i,v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then
            v.Handle.CFrame = Clone[v.Name].Handle.CFrame
        end
    end
end))


Humanoid.Died:Connect(function()
    for i,v in pairs(Loops) do
        v:Disconnect()
    end
    Clone:Destroy()
    pcall(function()
        _G.Disconnect = false
    	_G.Somethinggggggg:Disconnect()
	for i,v in pairs(_G.EventTable) do
		v:Disconnect()
	end
    end)
end)
workspace.Camera.CameraSubject = CloneHumanoid
game.StarterGui:SetCore("SendNotification",{
    Title = "Project: Cat - Reborn",
    Text = "Reanimated With Simple Reanimate!",
})
spawn(function()
local sound = Instance.new("Sound", workspace.Camera)
sound.SoundId = "rbxassetid://3785105076"
repeat wait() until sound.IsLoaded 
sound:Play()
wait(1)
sound:Destroy()
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/stev15291/catv2/main/misc/anims.lua"))()


