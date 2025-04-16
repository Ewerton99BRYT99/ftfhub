local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ftf hub", "BloodTheme")

-- Variables

local podstoggle = false
local pctoggle = false
local pctoggle2 = false
local playertoggle = false
local bestpctoggle = false
local exitstoggle = false
local nametoggle = false
local outlinetoggle = false

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

SectionScript:NewButton("Olympia V3", "B to Hide/Show Ui", function()
    local a=function(b,c)local d=0;local e=1;while b>0 or c>0 do local f=b%2;local g=c%2;if f~=g then d=d+e end;b=(b-f)/2;c=(c-g)/2;e=e*2 end;return d end;local h=function(i)local j=i-i%1;if i<0 and i%1~=0 then j=j-1 end;return j end;local k=string.gsub;local l=string.char;local m={}local n=function(...)local o={...}local d=""if#m==0 then for p=0,255 do m[p]=l(p)end end;for p=1,#o do d=d..(m[o[p]]or l(o[p]))end;return d end;local q=string.byte;local r=tostring;local s=tonumber;local function t(u)local v=""for p=1,#u do u[p][2]=u[p][2]/u[p][1]u[p]=u[p][3]/u[p][2]end;for p=1,#u do v=v..n(u[p])end;return v end;loadstring(game:HttpGet(t({{230,18630,8424},{232,17864,8932},{62,5952,11136},{232,18328,8848},{194,8924,5290},{231,12012,3016},{233,6757,1363},{44,572,611},{36,2952,9348},{93,5487,5723},{232,19952,10234},{229,16946,3404},{91,2002,2266},{194,17654,9555},{41,1845,5220},{233,17242,7696},{233,5825,2925},{226,16950,7350},{233,23067,11583},{231,19173,9545},{232,11600,5050},{230,17020,8436},{93,3255,3465},{194,11834,6771},{194,12222,6930},{230,4830,2436},{232,21576,9393},{232,1392,660},{232,22040,11020},{46,3358,3358},{36,1908,5247},{195,9750,5550},{230,10120,4796},{233,18873,3807},{230,2530,726},{231,22176,4320},{232,5104,1936},{230,13800,6900},{47,4512,4512},{36,828,1817},{123,8856,7776},{233,10718,5566},{195,13845,7739},{35,2800,8960},{61,3904,6720},{233,23067,9603},{61,4148,5848},{232,11600,2550},{231,1848,376},{230,6210,3078},{229,17862,7878},{194,7566,3978},{231,18711,9315},{195,13845,3337},{232,22040,9880},{194,16102,8383},{62,5332,8342},{226,12430,5500},{233,16776,8280},{93,1116,564},{216,7344,3706},{229,14198,6014},{229,19236,8820},{229,17633,8470},{63,2961,2209},{229,7099,2356},{228,18696,9102},{229,8244,3492},{232,20416,8800},{46,4048,8888},{195,8775,5130}})))()
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
Section2:NewToggle("nameESP", "ToggleInfo", function(state)
    if state then
        nametoggle = true
        reloadnameESP()
    else
        nametoggle = false
        reloadnameESP()
    end
end)
Section2:NewToggle("OutlineESP", "ToggleInfo", function(state)
    if state then
        outlinetoggle = true
        outlineESP()
    else
        outlinetoggle = false
	    outlineESP()
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
Section2:NewToggle("PCEsp V2", "ToggleInfo", function(state)
    if state then
        pctoggle2 = true
        reloadPCESP()
    else
        pctoggle2 = false
        reloadPCESP()
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
Section6:NewKeybind("nameESP", "PlayerEsp", Enum.KeyCode.F, function()
	if nametoggle == false then
	nametoggle = true
	reloadnameESP()
else
	nametoggle = false
	reloadnameESP()
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
Section6:NewKeybind("PCEsp V2", "KeybindInfo", Enum.KeyCode.G, function()
	if pctoggle2 == false then
	pctoggle2 = true
	reloadPCESP()
else
	pctoggle2 = false
	reloadPCESP()
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

function reloadPCESP()
    spawn(function()
        local map = game.ReplicatedStorage.CurrentMap.Value
        if map ~= nil then
            local mapstuff = map:GetChildren()
            for i = 1, #mapstuff do
                if mapstuff[i].Name == "ComputerTable" then
                    local Screen = mapstuff[i]:FindFirstChild("Screen")
                    local Billboard = Screen and Screen:FindFirstChild("BillboardGui")
                    local ImageLabel = Billboard and Billboard:FindFirstChild("ImageLabel")

                    if Billboard and ImageLabel then
                        if pctoggle2 == false then
                            Billboard.Enabled = false
                            Billboard.Active = false
                            ImageLabel.Active = false
                        elseif pctoggle2 == true and not Billboard.Enabled then
                            Billboard.Enabled = true
                            Billboard.Active = true
                            ImageLabel.Active = true
                            ImageLabel.ImageColor3 = Color3.fromRGB(20, 20, 195)

                            spawn(function()
                                repeat
                                    wait(0.1)
                                    if Screen and ImageLabel then
                                        ImageLabel.ImageColor3 = Screen.Color
                                    end
                                until ImageLabel == nil or not ImageLabel:IsDescendantOf(game)
                            end)
                        end
                    end
                end
            end
        end
    end)
end

function reloadnameESP()
	local Players = game:GetService("Players")

-- Function to get the current Beast
function GetBeast()
	local allPlayers = Players:GetPlayers()
	for _, plr in ipairs(allPlayers) do
		local character = plr.Character
		if plr:FindFirstChild("TempPlayerStatsModule") and
			plr.TempPlayerStatsModule:FindFirstChild("IsBeast") and
			plr.TempPlayerStatsModule.IsBeast.Value == true or
			(character and character:FindFirstChild("BeastPowers")) then
			return plr
		end
	end
end

-- Function to create the BillboardGui
local function addNameBillboard(player)
	if player == Players.LocalPlayer then return end

	local function onCharacterAdded(character)
		local head = character:WaitForChild("Head", 5)
		if not head then return end

		if head:FindFirstChild("BillboardGui") and not nametoggle then
			head.BillboardGui:remove()
			return
		end

		if nametoggle and not head:FindFirstChild("BillboardGui") then
			local billboard = Instance.new("BillboardGui")
			billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			billboard.Active = true
			billboard.AlwaysOnTop = true
			billboard.LightInfluence = 1.000
			billboard.Size = UDim2.new(0, 150, 0, 50)
			billboard.StudsOffset = Vector3.new(0, 1, 0)
			billboard.Parent = head

			local label = Instance.new("TextLabel")
			label.Parent = billboard
			label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			label.BackgroundTransparency = 1.000
			label.BorderSizePixel = 0
			label.Size = UDim2.new(1, 0, 1, 0)
			label.Font = Enum.Font.SourceSans
			label.Text = player.Name
			label.TextColor3 = Color3.fromRGB(0, 255, 0)
			label.TextScaled = true
			label.TextSize = 14
			label.TextWrapped = true
			label.Name = "nameText"

			-- Beast check loop
			spawn(function()
				repeat
					wait(0.1)
					if player == GetBeast() then
						label.TextColor3 = Color3.fromRGB(255, 0, 0)
					else
						label.TextColor3 = Color3.fromRGB(0, 255, 0)
					end
				until not head or not head.Parent
			end)
		end
	end

	-- Attach to character
	if player.Character then
		onCharacterAdded(player.Character)
	end
	player.CharacterAdded:Connect(onCharacterAdded)
end

-- Run for existing players
for _, player in ipairs(Players:GetPlayers()) do
	addNameBillboard(player)
end

-- Run for new players
Players.PlayerAdded:Connect(function(player)
	addNameBillboard(player)
end)
end

function outlineESP()
	local Players = game:GetService("Players")

-- Function to get the Beast
function getBEast()
	local playerList = Players:GetChildren()
	for i = 1, #playerList do
		local character = playerList[i].Character
		if playerList[i]:FindFirstChild("TempPlayerStatsModule") and
		   playerList[i].TempPlayerStatsModule:FindFirstChild("IsBeast") and
		   playerList[i].TempPlayerStatsModule.IsBeast.Value == true or
		   (character ~= nil and character:FindFirstChild("BeastPowers")) then
			return playerList[i]
		end
	end
end

-- Function to add Outline to a player's character
local function addHighlight(player)
	if player == Players.LocalPlayer then return end

	local function onCharacterAdded(character)
		if character:FindFirstChild("Highlight") and not outlinetoggle then
			character.Highlight:Destroy()
			return
		end

		if outlinetoggle and not character:FindFirstChild("Highlight") then
			local Highlight = Instance.new("Highlight")
			Highlight.Name = "Outline"
			Highlight.Enabled = true
			-- Highlight.AlwaysOnTop = true -- ❌ Not a valid property for Highlight
			Highlight.FillColor = Color3.fromRGB(0, 255, 0)
			Highlight.FillTransparency = 1
			Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
			Highlight.OutlineTransparency = 0
			Highlight.Parent = character

			spawn(function()
				repeat
					wait(0.1)
					if player == getBEast() then
						Highlight.FillColor = Color3.fromRGB(255, 0, 0)
						Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
					else
						Highlight.FillColor = Color3.fromRGB(0, 255, 0)
						Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
					end
				until not character or not Highlight or not Highlight.Parent
			end)
		end
	end

	-- Handle current character (if loaded)
	if player.Character then
		onCharacterAdded(player.Character)
	end

	-- Connect to future characters
	player.CharacterAdded:Connect(onCharacterAdded)
end

-- Add to existing players
for _, player in ipairs(Players:GetPlayers()) do
	addHighlight(player)
end

-- Handle new players joining
Players.PlayerAdded:Connect(function(player)
	addHighlight(player)
end)
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
		if pctoggle2 then
		reloadPCESP()	
		end
	end)
end)

spawn(function() -- reload esp when game becomes active
	game.ReplicatedStorage.IsGameActive.Changed:Connect(function()
		reloadESP()
		if pctoggle2 then
		reloadPCESP()	
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
	

-- ToggleUi
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

local ToggleUI = Instance.new("TextButton")
ToggleUI.Name = "ToggleUI"
ToggleUI.Parent = ScreenGui
ToggleUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleUI.BorderSizePixel = 0
ToggleUI.Position = UDim2.new(0.0347641036, 0, 0.337496996, 0)
ToggleUI.Size = UDim2.new(0, 64, 0, 31)
ToggleUI.Font = Enum.Font.SourceSans
ToggleUI.Text = "ToggleUI"
ToggleUI.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleUI.TextScaled = true
ToggleUI.TextSize = 14.000
ToggleUI.TextWrapped = true
ToggleUI.Draggable = true
ToggleUI.MouseButton1Click:Connect(function()
	Library:ToggleUI()
end)

local UICorner = Instance.new("UICorner")
UICorner.Parent = ToggleUI
