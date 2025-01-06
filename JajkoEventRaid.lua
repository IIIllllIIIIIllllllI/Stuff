print("              ██╗ █████╗      ██╗██╗  ██╗ ██████╗ ")
print("              ██║██╔══██╗     ██║██║ ██╔╝██╔═══██╗")
print("              ██║███████║     ██║█████╔╝ ██║   ██║")
print("         ██   ██║██╔══██║██   ██║██╔═██╗ ██║   ██║")
print("       ╚█████╔╝██║  ██║╚█████╔╝██║  ██╗╚██████╔╝  ")
print("          ╚════╝ ╚═╝  ╚═╝ ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ")
warn(" ██████╗██████╗  █████╗ ███████╗██╗  ██╗███████╗██████╗ ")
warn("██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║██╔════╝██╔══██╗")
warn("██║     ██████╔╝███████║███████╗███████║█████╗  ██████╔╝")
warn("██║     ██╔══██╗██╔══██║╚════██║██╔══██║██╔══╝  ██╔══██╗")
warn("╚██████╗██║  ██║██║  ██║███████║██║  ██║███████╗██║  ██║")
warn(" ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝")
warn("                         Intizialized                       ")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "🥚Jajko Event🥚 - Raider",
    Icon = 0,
    LoadingTitle = "🥚Jajko Event🥚 - Raider",
    LoadingSubtitle = "by NooberGoober",
    Theme = "Ocean",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "raider_"
    },
    Discord = {
       Enabled = true,
       Invite = "nP4ZVx2mfB",
       RememberJoins = false
    },
    KeySystem = true,
    KeySettings = {
       Title = "🥚Jajko Event🥚 - Key System",
       Subtitle = "Key System",
       Note = "Get key: discord.gg/nP4ZVx2mfB",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"JajkoRaider"}
    }
})

local TrollTab = Window:CreateTab("Troll", 4483362458)

local AnnoyButton = TrollTab:CreateButton({
   Name = "Annoy All",
   Callback = function()
      local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function getAllRemoteEvents(parent)
    local remoteEvents = {}
    for _, child in ipairs(parent:GetDescendants()) do
        if child:IsA("RemoteEvent") then
            table.insert(remoteEvents, child)
        end
    end
    return remoteEvents
end

local remoteEvents = getAllRemoteEvents(ReplicatedStorage)

    for iv = 1, 100 do
    for _, remoteEvent in ipairs(remoteEvents) do
        remoteEvent:FireServer()
    end
end
   end,
})

local KickAllButton = TrollTab:CreateButton({
   Name = "Lag Kick All",
   Callback = function()
      local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function getAllRemoteEvents(parent)
    local remoteEvents = {}
    for _, child in ipairs(parent:GetDescendants()) do
        if child:IsA("RemoteEvent") then
            table.insert(remoteEvents, child)
        end
    end
    return remoteEvents
end

local remoteEvents = getAllRemoteEvents(ReplicatedStorage)

    for iv = 1, 500 do
    for _, remoteEvent in ipairs(remoteEvents) do
        remoteEvent:FireServer()
    end
end
   end,
})

local SpamButton = TrollTab:CreateButton({
   Name = "Spam Everything In-Game",
   Callback = function()
      local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function getAllRemoteEvents(parent)
    local remoteEvents = {}
    for _, child in ipairs(parent:GetDescendants()) do
        if child:IsA("RemoteEvent") then
            table.insert(remoteEvents, child)
        end
    end
    return remoteEvents
end

local remoteEvents = getAllRemoteEvents(ReplicatedStorage)

    while wait() do
    for _, remoteEvent in ipairs(remoteEvents) do
        remoteEvent:FireServer()
    end
end
   end,
})
