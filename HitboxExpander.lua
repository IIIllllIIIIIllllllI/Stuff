game:GetService("StarterGui"):SetCore("SendNotification", {Title="Sucess!",Text="Loaded!",Duration=5})
while wait() do
	for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
            pcall(function()
                v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                v.Character.HumanoidRootPart.Transparency = 0.7
                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                v.Character.HumanoidRootPart.Material = "Neon"
                v.Character.HumanoidRootPart.CanCollide = false
            end)
        end
    end
end
