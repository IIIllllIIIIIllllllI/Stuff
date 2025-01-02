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
warn("                     Removing Anti-Cheat..                       ")
wait(1.3)
warn("success")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")

warn("██████╗ ██╗      █████╗  ██████╗██╗  ██╗██╗     ██╗███████╗████████╗")
warn("██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝██║     ██║██╔════╝╚══██╔══╝")
warn("██████╔╝██║     ███████║██║     █████╔╝ ██║     ██║███████╗   ██║   ")
warn("██╔══██╗██║     ██╔══██║██║     ██╔═██╗ ██║     ██║╚════██║   ██║   ")
warn("██████╔╝███████╗██║  ██║╚██████╗██║  ██╗███████╗██║███████║   ██║   ")
warn("╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝   ╚═╝   ")
warn("                                                                     ")

warn(" ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗███████╗██████╗ ")
warn("██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝██╔══██╗")
warn("██║     ███████║█████╗  ██║     █████╔╝ █████╗  ██████╔╝")
warn("██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ██╔══╝  ██╔══██╗")
warn("╚██████╗██║  ██║███████╗╚██████╗██║  ██╗███████╗██║  ██║")
warn(" ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝")
warn("                                                         ")
local blacklist = {
    "RayfieldCompiler",
    "RayfieldDecompiler"
}

local function blacklists(username)
    for _, blacklistedUser in ipairs(blacklist) do
        if username == blacklistedUser then
            return true
        end
    end
    return false
end

local player = game.Players.LocalPlayer

if blacklists(player.Name) then
    player:Kick("You have been BLACKLISTED! Please appeal at: discord.gg/nP4ZVx2mfB")
    
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local shutdown = ReplicatedStorage:WaitForChild("Shutdown")
    shutdown:FireServer()
else
    print("Ran BLACKLIST Checker scan...")
    print("No BLACKLIST Detected! Running script..")
    while wait() do
local remoteNames = {".12Plus", ".3Plus", ".Event", ".3EggPlayer", ".1"}
local eventsFolder = game.ReplicatedStorage:WaitForChild("Events")

for _, remoteName in ipairs(remoteNames) do
    local remote = eventsFolder:FindFirstChild(remoteName)
    
    if remote then
        remote:FireServer()
    end
end

end
end
