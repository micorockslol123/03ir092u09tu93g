if not _G.ScriptStop then _G.ScriptStop = false end
if not _G.EventTable then _G.EventTable = {} end
if not _G.AnimsOff then _G.AnimsOff = false end
if not _G.SimulationRadius then _G.SimulationRadius = false end
local Version = loadstring(game:HttpGet("https://raw.githubusercontent.com/stev15291/catv2/main/currentversion"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/stev15291/catv2/main/misc/uilib.lua"))()
local Main = Library:Create("Project: Cat")
local Tab1 = Main:Tab("Home")
local Tab2 = Main:Tab("Reanimations")
local Tab3 = Main:Tab("Scripts")
local Tab4 = Main:Tab("Free Scripts")
local Tab5 = Main:Tab("Hats")
local Tab6 = Main:Tab("Credits")
local Tab7 = Main:Tab("Information")
function Link(a)
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/stev15291/catv2/main/"..a..".lua"))()
end
Tab1:Label("Welcome, "..game.Players.LocalPlayer.Name..".")
Tab1:Label("Current Version: ".._G.ProjectCatVersion)
Tab1:Button("Copy Discord Invite", function()
    if setclipboard then
        setclipboard("https://discord.gg/cDKDEdQKaq")
    end
end)
Tab6:Label("TheGamer101 - R15 Hat Fix")
Tab6:Label("Mizt - R15 Dummy")
Tab6:Label("Ches - Good Velocity Axis")
Tab6:Label("Gelatek - UI, Reanimations, Converts, Misc.")
Tab6:Line()
Tab2:Toggle("Disable Animate Script", function(a)
	_G.AnimsOff = a
end)
Tab2:Toggle("Enable SimulationRadius", function(a)
	_G.SimulationRadius = a
	if _G.SimulationRadius == true then
			game:GetService("RunService").Heartbeat:Connect(function()
			game.TestService.IsSleepAllowed = false
			game.Players.LocalPlayer.MaximumSimulationRadius = 1000
			setsimulationradius(1000)
		end)
	else
		
	end
end)
Tab2:Line()
Tab2:Button("Simple Reanimate", function()
	Link("reanim/simple")
end)
Tab2:Button("Fling Reanimate", function()
	Link("reanim/fling")
end)
Tab2:Button("Bullet Reanimate", function()
	Link("reanim/bullet")
end)
Tab2:Button("GodMode Reanimate", function()
	Link("reanim/pdeath")
end)
Tab2:Line()
Tab2:Button("Test Bullet Now", function()
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
if MouseHolding then
	if Mouse.Target ~= nil then
   pcall(function()
   if game.Players:GetPlayerFromCharacter(Mouse.Target.Parent) then
      if Mouse.Target.Parent.Name ~= game.Players.LocalPlayer.Name then
         BP.Position = Mouse.Target.Parent.HumanoidRootPart.CFrame.p or Mouse.Target.Parent.Head.CFrame.p
      else
         BP.Position = Mouse.Hit.p
      end
   elseif game.Players:GetPlayerFromCharacter(Mouse.Target.Parent.Parent) then
      if Mouse.Target.Parent.Parent.Name ~= game.Players.LocalPlayer.Name then
         BP.Position = Mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p or Mouse.Target.Parent.Parent.Head.CFrame.p
      else
         BP.Position = Mouse.Hit.p
      end
   else
      BP.Position = Mouse.Hit.p
  end
   
   end)
else
   BP.Position = Char.Torso.Position + Vector3.new(0,-5,0)
end
end
end)
wait(0.1)
Bullet.Anchored = false

else
    game.StarterGui:SetCore("SendNotification",{
        Title = "Project: Cat - Reborn",
        Text = "Reanimate With Bullet Or Godmode in order to test it.",
    })
 end
end)
Tab2:Button("Stop Bullet Testing", function()
	if _G.BulletEnabled == true then
	pcall(function()
	_G.Somethinggggggg:Disconnect()
	local Bullet = game.Players.LocalPlayer.Character:FindFirstChild("Bullet") or game.Players.LocalPlayer.Character:FindFirstChild("Left Arm") or game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
			Bullet.Anchored = true
	Bullet.BodyPosition:Destroy()
	_G.Disconnect = false
	Bullet.SelectionBox:Destroy()
	Bullet.Transparency = 0	
	if game.Players.LocalPlayer.Character:FindFirstChild("Bullet") then
	game.Players.LocalPlayer.Character:FindFirstChild("Bullet").Transparency = 1				
	end
		wait(0.1)
	Bullet.Anchored = false
	end)
	else
    game.StarterGui:SetCore("SendNotification",{
        Title = "Project: Cat - Reborn",
        Text = "Reanimate With Bullet Or Godmode in order to test it.",
    })
end
end)
Tab2:Line()
Tab2:Button("Copy R6 Bullet Hat", function()
    if setclipboard then
        setclipboard("48474313")
    end
end)
Tab2:Button("Copy R15 Bullet/PDeath Hat", function()
    if setclipboard then
        setclipboard("5973840187")
    end
end)
Tab2:Line()
Tab2:Label("Info: Hats Are Optional. (Reanims Only)")
Tab3:Button("Stop Script", function()
	Link("misc/scriptstop")
end)
Tab3:Line()
Tab3:Button("Sun Sword", function()
	Link("hatscripts/sunsword")
end)
Tab3:Button("Sniper", function()
	Link("hatscripts/sniper")
end)
Tab3:Button("Zenith Battle Rifle-70", function()
	Link("hatscripts/rifle")
end)
Tab3:Button("Neptunian V", function()
	Link("hatscripts/neptunianv")
end)
Tab3:Button("The Carnage", function()
	Link("hatscripts/carnage")
end)
Tab3:Button("Sonata Crimson Scythe", function()
	Link("hatscripts/scythe")
end)

Tab3:Button("Gelatek's Gunner", function()
	Link("hatscripts/gelatekgunner")
end)
Tab3:Button("Gelatek's KatanaMaster", function()
	Link("hatscripts/katanastic")
end)
-------
Tab4:Button("Stop Script", function()
	Link("misc/scriptstop")
end)
Tab4:Line()
Tab4:Button("Gale Fighter", function()
	Link("freescripts/galefighter")
end)
Tab4:Button("Ender", function()
	Link("freescripts/ender")
end)
Tab4:Button("Cadacus", function()
	Link("freescripts/cadacus")
end)
Tab5:Button("Copy Sun Sword/Neptunian V Hat", function()
   if setclipboard then
      setclipboard("4506945409")
  end
end)
Tab5:Button("Copy Sniper Hat", function()
   if setclipboard then
      setclipboard("5063578607")
  end
end)
Tab5:Button("Copy Zenith Battle Rifle-70 Hats", function()
   if setclipboard then
      setclipboard("4962510729,4962455546")
  end
end)

Tab5:Button("Copy Carnage Hat", function()
   if setclipboard then
      setclipboard("4962455546")
  end
end)
Tab5:Button("Copy Gelatek's Gunner Hat", function()
   if setclipboard then
      setclipboard("6202087882")
  end
end)
Tab5:Button("Copy Gelatek's KatanaMaster Hat", function()
   if setclipboard then
      setclipboard("6655796738")
  end
end)
Tab5:Button("Copy Sonata Crimson Scythe Hat", function()
   if setclipboard then
      setclipboard("4820198802")
  end
end)
Tab7:Label("Script Stop Button Can Break Anims.")
Tab7:Label("To Fix this Just Click it again.")
Tab7:Line()
Tab7:Label("Also I didn't create the animations.")
Tab7:Label("I only converted them to FE.")
Tab7:Label("Exclusions: (Gelatek Gunner/KatanaMaster)")
