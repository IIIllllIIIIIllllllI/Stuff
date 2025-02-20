-- do not change anything in this code or you will break it!
-- please give credits if ur gonna use this in ur script or in a yt video

local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local r = game:GetService("ReplicatedStorage").Events.StatEvent
local function bald()
    r:FireServer("500")
end
local function source()
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Bald LocalPlayer Easy Size Obby - msedge",
    Icon = "crosshair",
    LoadingTitle = "simple bald script",
    LoadingSubtitle = "by NooberGoober",
    Theme = "Serenity",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "your mom hub"
    },
 
    Discord = {
       Enabled = true,
       Invite = "nP4ZVx2mfB",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
 })

 local Tab = Window:CreateTab("Methods", 4483362458)
 local CTab = Window:CreateTab("Credits", "notebook-pen")

 local Button = Tab:CreateButton({
    Name = "Normal TP Method",
    Callback = function()
        local player = game.Players.LocalPlayer
        local originalPosition = player.Character.HumanoidRootPart.Position
        local function bald()
            r:FireServer("500")
        end

        r:FireServer("1")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")

        wait(0.5)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Tween Method (not recommended)",
    Callback = function()
        local player = game.Players.LocalPlayer
        local pos = player.Character.HumanoidRootPart.Position
        local humanoid = player.Character:WaitForChild("Humanoid")
        local function bald()
            r:FireServer("500")
        end
        
        r:FireServer("1")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
        bald()
        r:FireServer("0.26")
    
        wait(0.5)
    
        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
    
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    
        local goal = {CFrame = CFrame.new(pos)}
        local tween = tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, goal)
        tween:Play()
    
        tween.Completed:Connect(function()
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end)
    end,
 })

 local Button = CTab:CreateButton({
    Name = "Notification Credits",
    Callback = function()
        Rayfield:Notify({
            Title = "Credits",
            Content = "just made by noobergoober thats all",
            Duration = 3,
            Image = "notebook-pen",
         })
    end,
 })
 Rayfield:Notify({
    Title = "Information",
    Content = "Aslong as you don't resize, you won't bug.",
    Duration = 15,
    Image = "notebook-pen",
 })

 Rayfield:Notify({
    Title = "loaded",
    Content = "finished loading",
    Duration = 2,
    Image = "notebook-pen",
 })
end

--[[ OLD BROKEN CODE
r:FireServer("1")
bald()
r:FireServer("0.26")
bald()
r:FireServer("0.26")
bald()
r:FireServer("0.26")
bald()
r:FireServer("0.26")
bald()
r:FireServer("0.26")
bald()
r:FireServer("0.26")

wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
]]--

-- NEW CODE
source()
