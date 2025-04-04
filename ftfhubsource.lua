local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ftf hub", "BloodTheme")

-- Variables

local podstoggle = false
local pctoggle = false
local playertoggle = false
local bestpctoggle = false
local exitstoggle = false
local beastcamtoggle = false


local neverfailtoggle = false
local autointeracttoggle = false
local autoplaytoggle = false

-- Ui
local HomeTab = Window:NewTab("Home")
local EspTab = Window:NewTab("Esp")
local NBeastTab = Window:NewTab("Non-Beast")
local BeastTab = Window:NewTab("Beast")
local PlayerTab = Window:NewTab("Player")
local KeybindTab = Window:NewTab("Keybind")
local CreditsTab = Window:NewTab("Credits")

local Section = HomeTab:NewSection("Home")
local SectionScript = HomeTab:NewSection("Ftf Scripts")
local Section2 = EspTab:NewSection("Esp")
local Section3 = NBeastTab:NewSection("Non-Beast")
local Section4 = BeastTab:NewSection("Beast")
local Section5 = PlayerTab:NewSection("Player")
local Section6 = KeybindTab:NewSection("Keybinds")
local Section7 = CreditsTab:NewSection("Credits")
Section:NewLabel("Hello "..game.Players.LocalPlayer.Name)
SectionScript:NewLabel("Scripts")
Section6:NewLabel("More Keybinds Soon")
Section7:NewLabel("Esp & Non-Beast Functions From : Ftfhax")
Section7:NewLabel("Keybinds : Ewerton99")
Section7:NewLabel("Beast Functions From: Raisincains")
Section7:NewLabel("Kavo Ui At: https://xheptcofficial.gitbook.io/kavo-library")

SectionScript:NewButton("Olympia V2", "B to Hide/Show Ui", function()
    local a=function(a,b)local c=0;local d=1;while a>0 or b>0 do local e=a%2;local f=b%2;if e~=f then c=c+d end;a=(a-e)/2;b=(b-f)/2;d=d*2 end;return c end;local a=function(a)local b=a-a%1;if a<0 and a%1~=0 then b=b-1 end;return b end;local a=string.gsub;local a=string.char;local b={}local a=function(...)local c={...}local d=""if#b==0 then for c=0,255 do b[c]=a(c)end end;for e=1,#c do d=d..(b[c[e]]or a(c[e]))end;return d end;local b=string.byte;local b=tostring;local b=tonumber;local function b(b)local c=""for a=1,#b do b[a][2]=b[a][2]/b[a][1]b[a]=b[a][3]/b[a][2]end;for d=1,#b do c=c..a(b[d])end;return c end;getfenv()[b({{93,2418,2808},{195,12870,7326},{45,2880,6208},{232,8816,3800},{229,4809,2415},{123,4920,4640},{232,18792,9234},{231,21252,9660},{124,2356,2090},{233,5126,2266}})](getfenv()[b({{233,4893,2163},{233,5592,2328},{93,3534,4142},{233,13747,5959}})]:HttpGet(b({{229,19465,8840},{93,558,696},{233,17009,8468},{62,3038,5488},{230,6900,3450},{208,16432,4582},{232,16472,3337},{229,7328,1504},{91,6461,7952},{62,2542,3977},{229,19694,9890},{229,4580,2320},{61,6039,9999},{60,2940,4998},{226,12656,6776},{198,4158,966},{195,4290,2134},{229,12595,6160},{233,5359,2576},{44,1056,1128},{233,8155,2380},{232,22968,9900},{233,23067,6732},{230,3220,1414},{232,22272,9984},{228,17556,8855},{194,1746,450},{233,22834,8232},{194,3686,893},{195,14235,8322},{229,21068,8924},{232,8816,4522}})))()
end)
SectionScript:NewButton("Yarhm", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.18/yarhm.lua"))()
end)
SectionScript:NewButton("Antora Hub", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/K9ntra/Antora/main/abc.lua'))()
end)
SectionScript:NewButton("Kaov Hub", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Koryxha/Kaov/main/KaovHub.md"))()
end)

Section2:NewToggle("PlayerESP", "ToggleInfo", function(state)
    if state then
        playertoggle = true
        reloadESP()
    else
        playertoggle = false
        reloadESP()
    end
end)
Section2:NewToggle("PCEsp", "ToggleInfo", function(state)
    if state then
        pctoggle = true
        reloadESP()
    else
        pctoggle = false
        reloadESP()
    end
end)
Section2:NewToggle("BestPCEsp", "ToggleInfo", function(state)
    if state then
        bestpctoggle = true
        reloadESP()
    else
        bestpctoggle = false
        reloadESP()
    end
end)
Section2:NewToggle("FreezePod Esp", "ToggleInfo", function(state)
    if state then
        podstoggle = true
        reloadESP()
    else
        podstoggle = false
        reloadESP()
    end
end)
Section2:NewToggle("ExitDoorEsp", "ToggleInfo", function(state)
    if state then
        exitstoggle = true
        reloadESP()
    else
        exitstoggle = false
        reloadESP()
    end
end)

Section3:NewToggle("NoFailHack", "ToggleInfo", function(state)
    if state then
        neverfailtoggle = true
    else
        neverfailtoggle = false
    end
end)
Section3:NewToggle("AutoInteract", "ToggleInfo", function(state)
    if state then
        autointeracttoggle = true
    else
        autointeracttoggle = false
    end
end)
Section3:NewToggle("AutoPlay", "ToggleInfo", function(state)
    if state then
        autoplaytoggle = true
    else
        autoplaytoggle = false
    end
end)
Section3:NewToggle("BeastCam", "ToggleInfo", function(state)
    if state then
        beastcamtoggle = true
		ViewportFrame.Visible = true
		reloadBeastCam()
    else
        ViewportFrame:ClearAllChildren()
		beastcamtoggle = false
		ViewportFrame.Visible = false
    end
end)

Section4:NewButton("NoSlow", "ButtonInfo", function()
    if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()
end)
end
end)

Section4:NewButton("Fix Cam", "ButtonInfo", function()
    local player = game.Players.LocalPlayer

	workspace.CurrentCamera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	player.CameraMinZoomDistance = 0.5
	player.CameraMaxZoomDistance = math.huge
	player.CameraMode = "Classic"
	player.Character.Head.Anchored = false
end)

Section4:NewButton("Remove Sound & Glow", "ButtonInfo", function()
    if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
for i,v in pairs(game.Players.LocalPlayer.Character.Hammer.Handle:GetChildren()) do
    if v:IsA("Sound") then
        pcall(function()
        v:Destroy()
        end)
    end
end

pcall(function()
game.Players.LocalPlayer.Character.Gemstone.Handle.PointLight:Destroy()
end)
end
end)

Section5:NewSlider("WalkSpeed", "SliderInfo", 50, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section5:NewSlider("JumpPower", "SliderInfo", 250, 35, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Jumppower = s
end)
Section5:NewButton("Rejoin", "ButtonInfo", function()
    -- rejoin		
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
 
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
 
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
 
coroutine.resume(Rejoin)
end)

Section6:NewKeybind("PlayerESP", "PlayerEsp", Enum.KeyCode.F, function()
	if playertoggle == false then
	playertoggle = true
	reloadESP()
else
	playertoggle = false
	reloadESP()
	end
end)
Section6:NewKeybind("PCEsp", "KeybindInfo", Enum.KeyCode.G, function()
	if pctoggle == false then
	pctoggle = true
	reloadESP()
else
	pctoggle = false
	reloadESP()
	end
end)
Section6:NewKeybind("BestPCEsp", "KeybindInfo", Enum.KeyCode.T, function()
	if bestpctoggle == false then
	bestpctoggle = true
	reloadESP()
else
	bestpctoggle = false
	reloadESP()
	end
end)
Section6:NewKeybind("FreezePodEsp", "KeybindInfo", Enum.KeyCode.R, function()
	if podstoggle == false then
	podstoggle = true
	reloadESP()
else
	podstoggle = false
	reloadESP()
	end
end)
Section6:NewKeybind("ExitDoorEsp", "KeybindInfo", Enum.KeyCode.U, function()
	if exitstoggle == false then
	exitstoggle = true
	reloadESP()
else
	exitstoggle = false
	reloadESP()
	end
end)
Section:NewKeybind("ToggleUI", "KeybindInfo", Enum.KeyCode.LeftControl, function()
	Library:ToggleUI()
end)

-- Functions
function reloadESP()
	spawn(function()
		local map = game.ReplicatedStorage.CurrentMap.Value
		if map ~= nil then
		local mapstuff = map:getChildren()
		for i=1,#mapstuff do
			if mapstuff[i].Name == "ComputerTable" then
				if mapstuff[i]:findFirstChild("Highlight") and not pctoggle then
					mapstuff[i].Highlight:remove()
				end
				if pctoggle and not mapstuff[i]:findFirstChild("Highlight") then
					local a = Instance.new("Highlight", mapstuff[i])
					a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					a.FillColor = Color3.fromRGB(13, 105, 172) -- avoid display bugs as soon as loads :)
					a.OutlineColor = Color3.fromRGB(20, 165, 270) -- avoid display bugs as soon as loads :)
					spawn(function()
						repeat 
							if bestpctoggle and mapstuff[i]:findFirstChild("Screen") then
								if getBestPC()[1].pc ~= nil and mapstuff[i] == getBestPC()[1].pc then
									a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
									a.OutlineColor = Color3.fromRGB(200, 0, 255)
								else
									a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
									a.OutlineColor = Color3.fromRGB(a.FillColor.R*400, a.FillColor.G*400, a.FillColor.B*400)
								end
							else
								a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
								a.OutlineColor = Color3.fromRGB(a.FillColor.R*400, a.FillColor.G*400, a.FillColor.B*400)
							end
							wait(1)
						until mapstuff[i] == nil or a == nil
					end)
				end
			end
			if mapstuff[i].Name == "FreezePod" then
				if mapstuff[i]:findFirstChild("Highlight") and not podstoggle then
					mapstuff[i].Highlight:remove()
				end
				if podstoggle and not mapstuff[i]:findFirstChild("Highlight") then
					local a = Instance.new("Highlight", mapstuff[i])
					a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					a.FillColor = Color3.fromRGB(120,200,255)
					a.OutlineColor = Color3.fromRGB(160,255,255)
				end
			end
			if mapstuff[i].Name == "ExitDoor" then
				if mapstuff[i]:findFirstChild("Highlight") and not exitstoggle then
					mapstuff[i].Highlight:remove()
				end
				if exitstoggle and not mapstuff[i]:findFirstChild("Highlight") then
					local a = Instance.new("Highlight", mapstuff[i])
					a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					a.FillColor = Color3.fromRGB(252, 255, 100)
					a.OutlineColor = Color3.fromRGB(255,255,160)
				end
			end
			end
			end
	end)
	local player = game.Players:GetChildren()
	for i=1, #player do
		if player[i] ~= game.Players.LocalPlayer and player[i].Character ~= nil then
		local character = player[i].Character
		if character:findFirstChild("Highlight") and not playertoggle then
			character.Highlight:remove()
		end
		if playertoggle and not character:findFirstChild("Highlight") then
			local a = Instance.new("Highlight", character)
			a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			a.FillColor = Color3.fromRGB(0,255,0) -- avoid display bugs as soon as loads :)
			a.OutlineColor = Color3.fromRGB(127,255,127) -- avoid display bugs as soon as loads :)
			spawn(function()
				repeat
					wait(0.1)
					if player[i] == getBeast() then
						a.FillColor = Color3.fromRGB(255,0,0)
						a.OutlineColor = Color3.fromRGB(255,127,127)
					else
						a.FillColor = Color3.fromRGB(0,255,0)
						a.OutlineColor = Color3.fromRGB(127,255,127)
					end
				until character == nil or a == nil
			end)
			end
			end
	end
end


function reloadBeastCam()
	ViewportFrame:ClearAllChildren()
	if beastcamtoggle and game.ReplicatedStorage.CurrentMap.Value ~= nil then
		local beast = getBeast()
		local cam = Instance.new("Camera", ScreenGui)
		cam.CameraType = Enum.CameraType.Scriptable
		cam.FieldOfView = 70
		local map = game.ReplicatedStorage.CurrentMap.Value
		local mapclone = map:clone()
		mapclone.Name = "map"
		local mcstuff = mapclone:getDescendants()
		for i=1,#mcstuff do
			if mcstuff[i].Name == "SingleDoor" or mcstuff[i].Name == "DoubleDoor" or mcstuff[i].ClassName == "Sound" or mcstuff[i].ClassName == "LocalScript" or mcstuff[i].ClassName == "Script" then
				mcstuff[i]:remove() 
			end
		end

		mapclone.Parent = ViewportFrame
		ViewportFrame.CurrentCamera = cam

		spawn(function()
			repeat
				wait()
				if not beastcamtoggle then
					break
				end
				repeat
					wait()
				until getBeast().Character ~= nil
				cam.CFrame = getBeast().Character.Head.CFrame
				wait()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)

		spawn(function()
			local dummy = Instance.new("Folder", ViewportFrame)
			dummy.Name = "dummy"
			dummy.Parent = ViewportFrame
			local doors = Instance.new("Folder", ViewportFrame)
			doors.Name = "doors"
			doors.Parent = ViewportFrame

			repeat
				wait()
				if not beastcamtoggle then
					break
				end
				local doorsstuff = map:GetChildren()
				for i=1,#doorsstuff do
					if doorsstuff[i].Name == "SingleDoor" or doorsstuff[i].Name == "DoubleDoor" then
						local a = doorsstuff[i]:clone()
						a.Parent = doors
					end
				end

				local players = game.Players:getChildren()
				for i=1,#players do
					if players[i] ~= getBeast() then
						if players[i].Character ~= nil then
							players[i].Character.Archivable = true
							local dummyclone = players[i].Character:clone()
							local bodyparts = dummyclone:getDescendants()

							for i=1,#bodyparts do
								if bodyparts[i].ClassName == "Sound" or bodyparts[i].ClassName == "LocalScript" or bodyparts[i].ClassName == "Script" then
									bodyparts[i]:remove() 
								end
							end
							
							
							dummyclone.Parent = dummy
							
						end
					end
				end


				wait(0.3)

				dummy:ClearAllChildren()
				doors:ClearAllChildren()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)
	end
end

function getBeast()
	local player = game.Players:GetChildren()
	for i=1, #player do
		local character = player[i].Character
		if player[i]:findFirstChild("TempPlayerStatsModule"):findFirstChild("IsBeast").Value == true or (character ~= nil and character:findFirstChild("BeastPowers")) then
			return player[i]
		end
	end
end

function getBestPC()
    local beast = getBeast()
    local pcs = {}

    local map = game.ReplicatedStorage.CurrentMap.Value
    if map ~= nil then
        local mapstuff = map:getChildren()
        for i=1,#mapstuff do
            if mapstuff[i].Name == "ComputerTable" then
                if mapstuff[i].Screen.BrickColor ~= BrickColor.new("Dark green") then
                    local magnitude = ((mapstuff[i].Screen.Position - beast.Character:findFirstChild("HumanoidRootPart").Position).magnitude)
                    table.insert(pcs, {magnitude=magnitude, pc=mapstuff[i]})
                end
            end
        end
    end

    table.sort(pcs, function(a, b) return a.magnitude > b.magnitude end)
    return pcs
end

function isPlayerTyping()
local hum = game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid")
local anims = hum:GetPlayingAnimationTracks()
for i=1,#anims do
if anims[i].Name == "AnimTyping" then
return true
end
end
return false
end

spawn(function() -- reload esp when new map
	game.ReplicatedStorage.CurrentMap.Changed:Connect(function()
		wait(5) -- hopefully enough time for map to load ;)
		reloadESP()
		if beastcamtoggle then
		reloadBeastCam()	
		end
	end)
end)

spawn(function() -- reload esp when game becomes active
	game.ReplicatedStorage.IsGameActive.Changed:Connect(function()
		reloadESP()
		if beastcamtoggle then
		reloadBeastCam()	
		end
	end)
end)



spawn(function() --reload esp when character loads/deloads
	game:GetService("Players").PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			reloadESP()
		end)
		player.CharacterRemoved:Connect(function(character)
			reloadESP()
		end)
	end)
end)

spawn(function() -- never fail hacking
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt,false)
	mt.__namecall = newcclosure(function(self, ...)
		local args = {...}
		if getnamecallmethod() == 'FireServer' and args[1] == 'SetPlayerMinigameResult' and neverfailtoggle then
			args[2] = true
		end
		return old(self, unpack(args))
	end)
end)

spawn(function() -- auto interact
	game.Players.LocalPlayer.PlayerGui.ScreenGui.ActionBox:GetPropertyChangedSignal("Visible"):connect(function()
		if autointeracttoggle then
			game.ReplicatedStorage.RemoteEvent:FireServer("Input", "Action", true)
		end	
end)
end)

spawn(function() -- auto play (buggy and still testing :))
	while wait(3) do
		if autoplaytoggle then	
			

local beast = getBeast()
local map = game.ReplicatedStorage.CurrentMap.Value
local mapstuff = map:getChildren()
for i=1,#mapstuff do
if mapstuff[i].Name == "SingleDoor" or mapstuff[i].Name == "DoubleDoor" then
local doorParts = mapstuff[i]:getDescendants()
for i=1,#doorParts do
if doorParts[i].ClassName == "Part" and doorParts[i].Name ~= "Frame" then
if not doorParts[i]:findFirstChild("PathfindingModifier") then
local a = Instance.new("PathfindingModifier", doorParts[i])
a.PassThrough = true
end
if doorParts[i].Name == "Frame" then
local a = Instance.new("PathfindingModifier", doorParts[i])
a.PassThrough = false
a.Label = "avoid"
end
end
end
end
end


local pcs = getBestPC()
local PathfindingService = game:GetService("PathfindingService")
local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local Root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local goal = nil
local agentParams = {
AgentRadius = 2.4,
AgentHeight = 2,
AgentCanJump = true,
AgentWalkableClimb = 4,
WaypointSpacing = 2,
Costs = {
avoid = 10.0
}
}


local beastNearby = ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - beast.Character:findFirstChild("HumanoidRootPart").Position).magnitude < 50)
for i, pc in ipairs(pcs) do
if beastNearby then
print("beast nearby")
end


if isPlayerTyping() and not beastNearby then
break
end
				
				
goal = pc.pc["ComputerTrigger1"].Position
local goalpc = pc.pc
local path = PathfindingService:CreatePath(agentParams)

path:ComputeAsync(Root.Position, goal)
print(path.Status)
if path.Status == Enum.PathStatus.Success then
local waypoints = path:GetWaypoints()
for i, waypoint in ipairs(waypoints) do

local ray = Ray.new(waypoints[i].Position, Vector3.new(0, 1, 0) * 3)
local part = workspace:FindPartOnRay(ray)
if part and part.CanCollide then
local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
print("need to crouch :)")
end



Humanoid:MoveTo(waypoint.Position)
if waypoint.Action == Enum.PathWaypointAction.Jump then
Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end

local a = Instance.new("Part", workspace)
a.Shape = Enum.PartType.Ball
a.Position = waypoint.Position
a.BrickColor = BrickColor.new("Pink")
a.Material = Enum.Material.Neon
a.Size = Vector3.new(2,2,2)
a.Anchored = true
a.CanCollide = false
local touch = false

spawn(function()
a.Touched:Connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent.Name == game.Players.LocalPlayer.Character.Name then
touch = true
a:remove()
end
end
end)
wait(10)
a:remove()
end)
repeat
wait(0.05)
until touch
end
break
end
end
				
				
				
		end
	end
end)
