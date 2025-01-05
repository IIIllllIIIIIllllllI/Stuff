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

local function isBlacklisted(username)
    for _, blacklistedUser in ipairs(blacklist) do
        if username == blacklistedUser then
            return true
        end
    end
    return false
end

local player = game.Players.LocalPlayer

if isBlacklisted(player.Name) then
    player:Kick("You have been BLACKLISTED! Please appeal at: discord.gg/nP4ZVx2mfB")
    
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local shutdown = ReplicatedStorage:WaitForChild("Shutdown")
    shutdown:FireServer()
else
    print("Ran BLACKLIST Checker scan...")
    print("No BLACKLIST Detected! Running script..")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local function scanner(parent)
        local remoteEvents = {}
    
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("RemoteEvent") then
                table.insert(remoteEvents, child)
            elseif child:IsA("Instance") then
                for _, remote in ipairs(scanner(child)) do
                    table.insert(remoteEvents, remote)
                end
            end
        end
    
        return remoteEvents
    end
    
    local remoteEvents = scanner(ReplicatedStorage)
    
    while wait() do
        for _, remoteEvent in ipairs(remoteEvents) do
            remoteEvent:FireServer()
        end
    end    
end
