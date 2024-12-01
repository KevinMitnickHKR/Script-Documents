function notify(text)
    local notification = Instance.new("Sound")
    notification.SoundId = "rbxassetid://3398620867"
    notification.Volume = 10
    notification.Parent = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    notification:Play()

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "NOTIFICATION",
        Text = text, 
        Button1 = "Alright",
        Duration = 8
    })
end

if game.PlaceId == 10449761463 then
    notify("ENJOY!!! MADE BY KEVINMITNICKHKR")
else
    game.Players.LocalPlayer:Kick("Wrong Game if it is the game please report it on our server.")
end

--// Intro \\--

local title = "--• |– Free –| •--"

local titleName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local tweenService = game:GetService("TweenService")
local lighting = game:GetService("Lighting")

local imageLabel = Instance.new("ImageLabel", screenGui)
imageLabel.Size = UDim2.new(0, 150, 0, 150)
imageLabel.Position = UDim2.new(0.5, -75, 0.5, -200)
imageLabel.Image = "rbxassetid://105855861857949"
imageLabel.BackgroundTransparency = 1
Instance.new("UICorner", imageLabel).CornerRadius = UDim.new(0, 20)

local texts = {
    {Text = "Roblox Scripts", Color = Color3.fromRGB(255, 255, 255), Position = UDim2.new(0.5, -75, 0.5, -130)},
    {Text = "HKR TEAM", Color = Color3.fromRGB(0, 255, 0), Position = UDim2.new(0.5, -75, 0.5, 70)},
    {Text = titleName, Color = Color3.fromRGB(255, 0, 0), Position = UDim2.new(0.5, -75, 0.5, -108)}
}

for _, info in ipairs(texts) do
    local text = Instance.new("TextLabel", screenGui)
    text.Size = UDim2.new(0, 150, 0, 30)
    text.Position = info.Position
    text.Text = info.Text
    text.TextColor3 = info.Color
    text.BackgroundTransparency = 1
    text.TextSize = 24
    text.TextTransparency = 1
    text.Font = Enum.Font.GothamBold
    text.TextStrokeTransparency = 0.5
    text.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    text.TextXAlignment = Enum.TextXAlignment.Center
end

local blurEffect = Instance.new("BlurEffect", lighting)
blurEffect.Size = 0

tweenService:Create(blurEffect, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = 25}):Play()
tweenService:Create(imageLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, -75, 0.5, -75)}):Play()

wait(1)

tweenService:Create(imageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -75, 0.5, -120)}):Play()
wait(0.3)
tweenService:Create(imageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -75, 0.5, -75)}):Play()

for _, text in ipairs(screenGui:GetChildren()) do
    if text:IsA("TextLabel") and text.Text ~= titleName then
        tweenService:Create(text, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
    end
end

wait(1.3)

for _, text in ipairs(screenGui:GetChildren()) do
    if text:IsA("TextLabel") and text.Text == titleName then
        tweenService:Create(text, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
    end
end

wait(1)

for _, text in ipairs(screenGui:GetChildren()) do
    if text:IsA("TextLabel") then
        tweenService:Create(text, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
    end
end

tweenService:Create(imageLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
tweenService:Create(blurEffect, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = 0}):Play()

--// Main Script \\--

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load(title)

local function c(title, id)
    local t = DrRayLibrary.newTab(title, "rbxassetid://" .. id)
    return t
end

--// Table Variables \\--

local Characters = {
    "TheStrongestHero",
    "HeroHunter",
    "DestructiveCyborg",
    "DeadlyNinja",
    "BrutalDemon",
    "BladeMaster",
    "WildPsychic",
    "MartialArtist"
}

local Combat = {
    Downslam = "rbxassetid://10470104242",
    Uppercut = "rbxassetid://10503381238",
    ForwardDash = {
        [1] = "rbxassetid://10479335397",
        [2] = "rbxassetid://13380255751"
    },
    BackDash = "rbxassetid://10491993682",
    SideDash = "rbxassetid://10480793962",
    Block = {
        [1] = "rbxassetid://10470389827",
        [2] = "rbxassetid://13935548552",
        [3] = "rbxassetid://13380778193"
    }
}

local Punches = {
    TheStrongestHero = {
        [1] = "rbxassetid://10469493270",
        [2] = "rbxassetid://10469630950",
        [3] = "rbxassetid://10469639222",
        [4] = "rbxassetid://10469643643"
    },
    HeroHunter = {
        [1] = "rbxassetid://13532562418",
        [2] = "rbxassetid://13532600125",
        [3] = "rbxassetid://13532604085",
        [4] = "rbxassetid://13294471966"
    },
    DestructiveCyborg = {
        [1] = "rbxassetid://13491635433",
        [2] = "rbxassetid://13296577783",
        [3] = "rbxassetid://13295919399",
        [4] = "rbxassetid://13295936866"
    },
    DeadlyNinja = {
        [1] = "rbxassetid://13370310513",
        [2] = "rbxassetid://13390230973",
        [3] = "rbxassetid://13378751717",
        [4] = "rbxassetid://13378708199"
    },
    BrutalDemon = {
        [1] = "rbxassetid://14004222985",
        [2] = "rbxassetid://13997092940",
        [3] = "rbxassetid://14001963401",
        [4] = "rbxassetid://14136436157"
    },
    BladeMaster = {
        [1] = "rbxassetid://15259161390",
        [2] = "rbxassetid://15240216931",
        [3] = "rbxassetid://15240176873",
        [4] = "rbxassetid://15162694192"
    },
    WildPsychic = {
        [1] = "rbxassetid://16515503507",
        [2] = "rbxassetid://16515520431",
        [3] = "rbxassetid://16515448089",
        [4] = "rbxassetid://16552234590"
    },
    MartialArtist = {
        [1] = "rbxassetid://17889458563",
        [2] = "rbxassetid://17889461810",
        [3] = "rbxassetid://17889471098",
        [4] = "rbxassetid://17889290569"
    }
}

local teleportLocations = {
    spawnTeleports = {
        ["Spawn 1"] = {228, 440, -4},
        ["Spawn 2"] = {207, 441, -238},
        ["Spawn 3"] = {378, 441, -70},
        ["Spawn 4"] = {217, 441, -237},
        ["Spawn 5"] = {368, 441, 153},
    },
    mountainTeleports = {
        ["Mountain 1"] = {6, 652, -339},
        ["Mountain 2"] = {392, 591, -425},
        ["Mountain 3"] = {1129, 816, -788},
        ["Mountain 4"] = {457, 668, -724},
        ["Mountain 5"] = {877, 554, 352},
        ["Mountain 6"] = {302, 671, 386},
    },
    placeTeleports = {
        ["Beach House"] = {553, 443, -504},
        ["Beach House 2"] = {766, 443, 169},
        ["Corner"] = {-209, 441, -269},
        ["Outside Walls"] = {-510, 439, -342},
        ["Outside Walls 2"] = {1673, 439, 386},
        ["Edge of a Wall"] = {62, 669, 662},
    }
}

local connections = {}

local counterAnimations = {
    "rbxassetid://15311685628",
    "rbxassetid://12351854556"
}

local aCD = {}
for _, punches in pairs(Punches) do
    for _, punch in ipairs(punches) do
        table.insert(aCD, punch)
    end
end
for _, dashes in pairs(Combat["ForwardDash"]) do
    table.insert(aCD, dashes) 
end

--// Variables \\--

local punch, punch2, punch3, punch4
local move, move2, move3, move4
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local originalPosition = nil

--// Bool Variables \\--

local autoDownslam = false
local autoUppercut = false
local autoWallAttack = false
local aB = false
local aC = false
local espEnabled = false
local invisBlock = false
local invisCounter = false
local invisUlt = false

--// Value Variables \\--

local p = 15
local d = 33
local pC = 13.55
local dC = 22.55
local pUI = 15
local dUI = 25
local healthDetect = 40
local healthBack = 100

--// Main Elements \\--

--| Combat Tab |--
local combatTab = c("Combat", "76098228184731")
combatTab.newLabel("--| Combat Aids |--")

combatTab.newToggle("Auto Uppercut", "Toggle", false, function(autoUppercutToggle)
    autoUppercut = autoUppercutToggle
    if autoUppercut then
        while autoUppercut do
            task.wait(0.75)
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Goal"] = "KeyPress", ["Key"] = Enum.KeyCode.Space})
        end
    else
        game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Goal"] = "KeyRelease", ["Key"] = Enum.KeyCode.Space})
    end
end)

combatTab.newToggle("Auto Wall Attack", "Toggle", false, function(autoWallAttackToggle)
    autoWallAttack = autoWallAttackToggle
    if autoWallAttack then
        while autoWallAttack do
            task.wait(0.75)
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Goal"] = "Wall Combo"})
            if not autoWallAttack then
                break
            end
        end
    end
end)
combatTab.newLabel("--•--")
combatTab.newToggle("Auto Block", "Toggle", false, function(s)
    aB = s
end)

combatTab.newToggle("Auto Counter", "Toggle", false, function(s)
    aC = s
end)
combatTab.newLabel("--| Adjust |--")
combatTab.newButton("Reset Settings", "Default Settings", function()
    p = 15
    d = 33
    pC = 13.55
    dC = 22.55
    pUI = 15
    dUI = 25
end)
combatTab.newInput("Auto Block Distance", "Value", function(v)
    p = tonumber(v) or 15
end)

combatTab.newInput("Auto Counter Distance", "Value", function(v)
    pC = tonumber(v) or 13.55
end)
combatTab.newLabel("--•--")
combatTab.newInput("Auto Block Dash Distance", "Value", function(v)
    d = tonumber(v) or 33
end)

combatTab.newInput("Auto Counter Dash Distance", "Value", function(v)
    dC = tonumber(v) or 22.55
end)
combatTab.newLabel("--| End |--")

--// Functions \\--

local function isNearPlayer(player, actionId, isCounter, isUltraInstinct)
    local dashDistance = isUltraInstinct and dU or (isCounter and pC or p)
    local punchDistance = isUltraInstinct and pU or (isCounter and pC or p)

    local isForwardDash = false
    for _, dashes in pairs(Combat["ForwardDash"]) do
        if actionId == dashes then
            isForwardDash = true
            break
        end
    end

    if isForwardDash and not isUltraInstinct then
        dashDistance = isCounter and dC or d
        punchDistance = isCounter and pC or p
    end

    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distCheck = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
        return distCheck <= dashDistance
    end
    return false
end

local function autoBlock()
    local targetPlayer = nil
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer then
            local c = plr.Character
            if c then
                local animator = c:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                if animator then
                    local playingAnimations = animator:GetPlayingAnimationTracks()
                    for _, anim in pairs(playingAnimations) do
                        if table.find(aCD, anim.Animation.AnimationId) and isNearPlayer(plr, anim.Animation.AnimationId, false, false) then
                            targetPlayer = plr
                            break
                        end
                    end
                end
            end
        end
    end

    if aB and targetPlayer then
        game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Goal"] = "KeyPress", ["Key"] = Enum.KeyCode.F})

        local isForwardDash = false
        for _, dashId in pairs(Combat["ForwardDash"]) do
            if table.find(aCD, dashId) then
                isForwardDash = true
                break
            end
        end

        if isForwardDash then
            wait(0.06)
        else
            wait()
        end

        game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Goal"] = "KeyRelease", ["Key"] = Enum.KeyCode.F})
    end
end

local function autoCounter()
    local targetPlayer = nil
    local counterFired = false

    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer then
            local c = plr.Character
            if c then
                local animator = c:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                if animator then
                    local playingAnimations = animator:GetPlayingAnimationTracks()
                    for _, anim in pairs(playingAnimations) do
                        if table.find(aCD, anim.Animation.AnimationId) and isNearPlayer(plr, anim.Animation.AnimationId, true, false) then
                            targetPlayer = plr
                            break
                        end
                    end
                end
            end
        end
    end

    if aC and targetPlayer and not counterFired then
        local tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Prey's Peril") or
                     game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Split Second Counter")
        if tool then
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer({["Tool"] = tool, ["Goal"] = "Console Move"})
            counterFired = true
            wait(1)
            counterFired = false
        end
    end
end

local function autoBlockM()
print("helo")
end

local function autoCounterM()
print("hello")
end

game:GetService("RunService").Heartbeat:Connect(function()
    if aB then
        autoBlock()
    end
    if aC then
        autoCounter()
    end
end)

local function clearESP()
    for _, connection in pairs(connections) do
        connection:Disconnect()
    end
    connections = {}
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            local head = otherPlayer.Character:FindFirstChild("Head")
            if head then
                local billboard = head:FindFirstChild("BillboardGui")
                if billboard then
                    billboard:Destroy()
                end
            end
        end
    end
end

local function createBillboard(character)
    local head = character:WaitForChild("Head")
    local humanoid = character:WaitForChild("Humanoid")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "BillboardGui"
    billboardGui.Parent = head
    billboardGui.Adornee = head
    billboardGui.AlwaysOnTop = false
    billboardGui.Brightness = 1
    billboardGui.DistanceLowerLimit = 0
    billboardGui.DistanceStep = 0
    billboardGui.DistanceUpperLimit = -1
    billboardGui.ExtentsOffset = Vector3.new(0, 0, 0)
    billboardGui.ExtentsOffsetWorldSpace = Vector3.new(0, 0, 0)
    billboardGui.LightInfluence = 1
    billboardGui.MaxDistance = math.huge
    billboardGui.ResetOnSpawn = true
    billboardGui.Size = UDim2.new(4, 0, 1, 0)
    billboardGui.SizeOffset = Vector2.new(0, 0)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.Parent = billboardGui
    textLabel.AnchorPoint = Vector2.new(0, 0)
    textLabel.AutomaticSize = Enum.AutomaticSize.None
    textLabel.BackgroundColor3 = Color3.new(255, 255, 255)
    textLabel.BackgroundTransparency = 1
    textLabel.BorderColor3 = Color3.new(27 / 255, 42 / 255, 53 / 255)
    textLabel.BorderMode = Enum.BorderMode.Outline
    textLabel.BorderSizePixel = 1
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
    textLabel.Visible = true
    textLabel.ZIndex = 1
    textLabel.RichText = true
    textLabel.FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    textLabel.Text = "<b>100%</b>"
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Center
    textLabel.TextYAlignment = Enum.TextYAlignment.Center

    local lastHealth = humanoid.Health

    local function updateHealth()
        local healthPercent = humanoid.Health / humanoid.MaxHealth
        textLabel.Text = "<b>" .. math.floor(healthPercent * 100) .. "%</b>"
        local newColor

        if humanoid.Health < lastHealth then
            newColor = Color3.new(0.8, 0.2, 0.2)
        elseif humanoid.Health > lastHealth then
            newColor = Color3.new(0.2, 0.8, 0.2)
        else
            return
        end

        textLabel.TextColor3 = newColor
        lastHealth = humanoid.Health

        task.delay(1.5, function()
            textLabel.TextColor3 = Color3.new(1, 1, 1)
        end)
    end

    local function updateSize()
        local camera = workspace.CurrentCamera
        local distance = (camera.CFrame.Position - head.Position).Magnitude
        local maxSize = 125
        local scale = math.clamp(1 / distance, 0.1, 1) * maxSize
        billboardGui.Size = UDim2.new(scale, 0, scale / 4, 0)
    end

    local function checkAccessory()
        if character:FindFirstChild("Counter") then
            textLabel.Text = "<b>Death Counter</b>"
            textLabel.TextColor3 = Color3.new(1, 0.84, 0)
        else
            textLabel.Text = "<b>" .. math.floor(humanoid.Health / humanoid.MaxHealth * 100) .. "%</b>"
            textLabel.TextColor3 = Color3.new(1, 1, 1)
        end
    end

    table.insert(connections, humanoid.HealthChanged:Connect(updateHealth))
    table.insert(connections, game:GetService("RunService").RenderStepped:Connect(updateSize))
    table.insert(connections, character.ChildAdded:Connect(function(child)
        if child:IsA("Accessory") and child.Name == "Counter" then
            checkAccessory()
        end
    end))
    table.insert(connections, character.ChildRemoved:Connect(function(child)
        if child:IsA("Accessory") and child.Name == "Counter" then
            checkAccessory()
        end
    end))

    checkAccessory()
    updateHealth()
    updateSize()
end

local function onPlayerAdded(otherPlayer)
    if otherPlayer ~= player then
        local function onCharacterAdded(character)
            if espEnabled then
                createBillboard(character)
            end
        end
        table.insert(connections, otherPlayer.CharacterAdded:Connect(onCharacterAdded))
        if otherPlayer.Character then
            onCharacterAdded(otherPlayer.Character)
        end
    end
end

--| Player Tab |--
local playerTab = c("Player", "82335085644803")
playerTab.newLabel("--| Mobility And Movement |--")

playerTab.newLabel("--| Teleports |--")
playerTab.newDropdown("Spawns", "Teleport", teleportLocations.spawnTeleports, function(selected)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(teleportLocations.spawnTeleports[selected]))
end)

playerTab.newDropdown("Mountains", "Teleport", teleportLocations.mountainTeleports, function(selected)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(teleportLocations.mountainTeleports[selected]))
end)

playerTab.newDropdown("Places", "Teleport", teleportLocations.placeTeleports, function(selected)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(teleportLocations.placeTeleports[selected]))
end)
playerTab.newLabel("--| End |--")

--| Visual Tab |--
local visualTab = c("Visual", "72423434601131")
visualTab.newLabel("--| Extra Sensory Perception |--")

visualTab.newToggle("Esp", "Toggle", false, function(enabled)
    espEnabled = enabled
    if espEnabled then
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            onPlayerAdded(otherPlayer)
        end
        table.insert(connections, game.Players.PlayerAdded:Connect(onPlayerAdded))
    else
        clearESP()
    end
end)
visualTab.newLabel("--| Visibility |--")
visualTab.newToggle("Invisible Block", "Toggle", false, function(s)
    invisBlock = s
end)

visualTab.newToggle("Invisible Counter", "Toggle", false, function(s)
    invisCounter = s
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if invisBlock then
        for _, anim in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            if table.find(Combat.Block, anim.Animation.AnimationId) then
                anim:Stop()
            end
        end
    end

    if invisCounter then
        for _, anim in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            if table.find(counterAnimations, anim.Animation.AnimationId) then
                anim:Stop()
            end
        end
    end
end)

--| Utility Tab |--
local utilityTab = c("Utility", "119049500306510")
utilityTab.newLabel("--| Utilities |--")

utilityTab.newToggle("Teleport To Safeplace", "Toggle", false, function(tpSafePlace)
    while tpSafePlace do
        wait(1)
        if humanoid.Health <= healthDetect then
            if not originalPosition then
                originalPosition = character.HumanoidRootPart.Position
            end
        
            local safePlace = Instance.new("Part")
            safePlace.Size = Vector3.new(100, 1, 100)
            safePlace.Position = character.HumanoidRootPart.Position + Vector3.new(0, 300, 0)
            safePlace.Anchored = true
            safePlace.Parent = workspace

            character.HumanoidRootPart.CFrame = CFrame.new(safePlace.Position + Vector3.new(0, 5, 0))

            while humanoid.Health <= healthDetect do
                wait(1)
            end

            character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)
            safePlace:Destroy()
            originalPosition = nil
        end
    end
end)
utilityTab.newLabel("--| End |--")