-- // UI LIB \\ --
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Infinity Hub",
	Text = "Natural Disaster Survival... Loaded"
})

-- // UI WINDOW \\ --
local window = DrRayLibrary:Load("Infinity Hub | Natural Disaster Survival", "rbxassetid://7733964640")

-- // UI TABS \\ --
local main = DrRayLibrary.newTab("Main", "rbxassetid://7733799185")
local misc = DrRayLibrary.newTab("Misc", "rbxassetid://7733993211")
local settings = DrRayLibrary.newTab("Settings", "rbxassetid://7734021300")
local credits = DrRayLibrary.newTab("Credits", "rbxassetid://7733692043")

-- // UI MAIN \\ --
main.newButton("Launch Rocket", "Remote activation of the rocket", function()
    pcall(function()
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge.ClickDetector)
	end)
end)

main.newButton("Show Disaster", "Allows you to know the disaster in advance ", function()
    game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Current Disaster",
	Text = game.Players.LocalPlayer.Character.SurvivalTag.Value
})
end)

main.newToggle("Auto Win", "Allows you to farme the wins while in the tower (Bug)", false, function(bool)
    if bool then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
                     local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 195, 288)
end)
if game.Players.LocalPlayer.Character.FallDamageScript then
game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
end
end
if not bool then
event:Disconnect()
end
    else
        _G.loop = false
    end
end)

main.newDropdown("Teleports", "Select where you want to be teleported", {"Island", "Tower"}, function(Value)
		if Value == 'Island' then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
		end
		if Value == 'Tower' then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 196, 288)
		end
end)

-- // UI MISC \\ -- 
misc.newToggle("Walk On Water", "Allows you to walk on water", false, function(bool)
    if bool then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
                     local water = game.Workspace.WaterLevel
	if not bool then 
		water.CanCollide = false
		water.Size = Vector3.new(10, 1, 10)
	end
	if bool then 
		water.CanCollide = true
		water.Size = Vector3.new(1000, 1, 1000)
	end
	end
    else
        _G.loop = false
    end
end)

misc.newToggle("Solide Island", "Allows you to walk along the side of the island", false, function(bool)
    if bool then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
                     for i, v in pairs (game.workspace:GetDescendants())do
			if v.Name == 'LowerRocks' then -- change part to the name you want to look for
				v.CanCollide = bool
			end
			end
			end
    else
        _G.loop = false
    end
end)

misc.newButton("No Fall Damage", "Prevents damage from falls", function()
    game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "No Fall Damage",
	Text = "If you die click disable fall damage again",
	Duration = math.huge,
	Button1 = "Can be bug"
})
game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
end)

misc.newInput("Enter Numbers :", "Your walk speed ", function(ws)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

misc.newInput("Enter Numbers :", "Your jump power", function(jp)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)

-- UI SETTINGS \\ --
settings.newInput("FOV", "Fov base and 70", function(v)
    game.Workspace.Camera.FieldOfView = v
end)

settings.newButton("Anti Afk", "Allows you to be afk and not crash", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

settings.newButton("Low Graphic", "Minimizes graphics and boosts fps", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

settings.newButton("RTX Graphic", "Boosts RTX graphics", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)

-- // UI CREDITS \\ --
credits.newButton("Discord", "Copy the discord link", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Creator", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Scripter", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Ui Design", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)
