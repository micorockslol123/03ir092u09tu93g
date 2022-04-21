TheHatLol = "Police K4LAS [Front]"
TheHatLol2 = TheHatLol -- "Police K4LAS [Front]"
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
local Attack = false
if _G.BulletEnabled == true then
local Bullet = game.Players.LocalPlayer.Character:FindFirstChild("Bullet") or game.Players.LocalPlayer.Character:FindFirstChild("Left Arm") or game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
local Char = game.Players.LocalPlayer.Character["Cat"]
local FlingTrigger;
Bullet.Anchored = true
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
BP.Position = Bullet.Position
local Mouse = game.Players.LocalPlayer:GetMouse()
wait(0.2)
_G.Somethinggggggg = game:GetService("RunService").Heartbeat:Connect(function()
Bullet.RotVelocity = Vector3.new(5000,5000,5000)
if Attack then
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
spawn(function()
wait(0.1)
end)
Bullet.Anchored = false
end

local attacksoundid = "rbxassetid://259016349"
_G.AttackWait1 = 0.2
_G.AttackWait2 = 0.2
local Special = false
local AttackFrame = 0
local Locked = false
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character["Cat"]
Character.Animate.Disabled = true
wait(0.5)
local Torso = Character:FindFirstChild("Torso")
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local RS = Torso:FindFirstChild("Right Shoulder")
local LS = Torso:FindFirstChild("Left Shoulder")
local RH = Torso:FindFirstChild("Right Hip")
local LH = Torso:FindFirstChild("Left Hip")
local Root = Character:FindFirstChild("HumanoidRootPart")
local Neck = Torso:FindFirstChild("Neck")
local RJ = Root:FindFirstChild("RootJoint")
local UserInputService = game:GetService("UserInputService")
Humanoid.WalkSpeed = 25
reanim = Character

local Hat = Character:FindFirstChild("Police K4LAS [Front]")


local soundeffect = Instance.new("Sound", Hat.Handle)
soundeffect.SoundId = attacksoundid

table.insert(_G.EventTable,UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		if Locked == false then
		Attack = true
		Locked = true
		AttackFrame = 1
		wait(_G.AttackWait1)
		soundeffect:Play()
		AttackFrame = 2
		wait(_G.AttackWait2)
		Attack = false
		AttackFrame = 0
		Locked = false
		end
	end
end))


spawn(function() while game:GetService("RunService").RenderStepped:Wait() do
			if _G.ScriptStop == true then
			break
		end
			for i, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		
	if Root.Velocity.y > 1 and Attack == false then
		Position = "Jump"
	elseif Root.Velocity.y < -1 and Attack == false and Special == false then
		Position = "Fall"
	elseif Root.Velocity.Magnitude < 2 and Attack == false and Special == false then -- idle
		Position = "Idle"
	elseif Root.Velocity.Magnitude > 20 and Attack == false and Special == false then -- idle
		Position = "Run"
	elseif Root.Velocity.Magnitude > 20 and Attack == true and Special == false and AttackFrame == 1 then -- idle
		Position = "RunAttack1"
	elseif Root.Velocity.Magnitude > 20 and Attack == true and Special == false and AttackFrame == 2 then -- idle
		Position = "RunAttack2"	
	elseif Attack == true and Special == false and AttackFrame == 1 then
		Position = "Attack1"
	elseif Attack == true and Special == false and AttackFrame == 2 then
		Position = "Attack2"
	elseif Special == true and Attack == false then
		Position = "Special"
	end
end end)
local Sine = 1
local Speed = 1
-- combability with nexo
local sine = 1
local speed = 1
local CF = CFrame.new
local RAD = math.rad
local ANGLES = CFrame.Angles

-- combability with nexo
local NECK = Torso:FindFirstChild("Neck")
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
function HatSetup(Hat,Part,C1,C0,Number)
Character[Hat].Handle.AccessoryWeld.Part1=Character[Part]
Character[Hat].Handle.AccessoryWeld.C1=C1 or CFrame.new()
Character[Hat].Handle.AccessoryWeld.C0=C0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
end

HatSetup('Police K4LAS [Front]','Right Arm',CFrame.new(),reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(268+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)



spawn(function()
	while game:GetService("RunService").RenderStepped:Wait() do
		if _G.ScriptStop == true then
			break
		end
		Sine = Sine + Speed
		-- combability with nexo
		sine =sine + speed
		if Position == "Idle" then

		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/21),0+0.05*math.sin(sine/21),0+0*math.cos(sine/21))*ANGLES(RAD(1+0*math.cos(sine/21)),RAD(0+0*math.cos(sine/21)),RAD(0+0*math.cos(sine/21))),.3)
		RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/23),0.5+0.1*math.cos(sine/23),0+0*math.cos(sine/23))*ANGLES(RAD(260+0*math.cos(sine/23)),RAD(12+0*math.cos(sine/23)),RAD(-68+0*math.cos(sine/23))),.3)
		LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-8*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-8+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
		reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(268+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)


		elseif Position == "Run" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/28),0+0*math.cos(sine/28),0+0*math.cos(sine/28))*ANGLES(RAD(0+5*math.sin(sine/28)),RAD(0+0*math.cos(sine/28)),RAD(0+-6*math.cos(sine/28))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+45*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-0.9+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(268+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)


		elseif Position == "Jump" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(7+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(30+2*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-40+-2*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(268+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		elseif Position == "Fall" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+2*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-10+-3*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.76+0*math.cos(sine/13),-0.1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(268+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			
		elseif Position == "Attack1" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(75+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-0.9+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-8+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1.2+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(179+0*math.cos(sine/13))),.3)
		elseif Position == "Attack2" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(134+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-0.9+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-8+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.sin(sine/13),-0.9+0.05*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1.2+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(179+0*math.cos(sine/13))),.3)
		elseif Position == "RunAttack1" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(92+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-0.9+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1.2+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(179+0*math.cos(sine/13))),.3)
		elseif Position == "RunAttack2" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(134+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-0.9+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0 = reanim['Police K4LAS [Front]'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-1.2+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(179+0*math.cos(sine/13))),.3)
		end
	end
end)
