if game.PlaceId == 16732694052 then
for iv = 1, 2000 do
    game:GetService("ReplicatedStorage").packages.Net["RE/DailyReward/Claim"]:FireServer()
end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success",
        Text = "added 3m cash to " .. game.Players.LocalPlayer.Name, 
        Duration = 6
    })
wait(1.4)
game:GetService("TeleportService"):Teleport(16732694052, game.Players.LocalPlayer)
else
game:GetService("TeleportService"):Teleport(16732694052, game.Players.LocalPlayer)
end
