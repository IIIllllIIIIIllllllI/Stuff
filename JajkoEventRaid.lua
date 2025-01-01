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
    game:GetService("ReplicatedStorage").Events.Plus12:FireServer(true)
    game:GetService("ReplicatedStorage").Events.Plus3:FireServer(true)
    game:GetService("ReplicatedStorage").Events.StartEvent:FireServer(true)
    game:GetService("ReplicatedStorage").Events.PlayerEgg:FireServer(true)
    game:GetService("ReplicatedStorage").Events.KurkaBuy:FireServer(true)
end
end
