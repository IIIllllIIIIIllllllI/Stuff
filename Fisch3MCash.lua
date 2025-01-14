if game.PlaceId == 16732694052 then
for iv = 1, 2000 do
    game:GetService("ReplicatedStorage").packages.Net["RE/DailyReward/Claim"]:FireServer()
end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success",
        Text = "added 3m cash to " .. game.Players.LocalPlayer.Name, 
        Duration = 6
    })
wait(2.7)
game:GetService("Players").LocalPlayer:Kick("added 3m cash. join our discord: .gg/nP4ZVx2mfB")
wait(0.2)
game:GetService("TeleportService"):Teleport(16732694052, game.Players.LocalPlayer)
else
game:GetService("TeleportService"):Teleport(16732694052, game.Players.LocalPlayer)
end
