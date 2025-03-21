local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
local hb = game:GetService("RunService").Heartbeat

chr.Animate.Enabled = false
for i = 1, 3 do
while chr and hum and hum.Parent do
    local delta = hb:Wait()
    if hum.MoveDirection.Magnitude > 0 then
        chr:TranslateBy(hum.MoveDirection * delta * 20)
    end
end
end
