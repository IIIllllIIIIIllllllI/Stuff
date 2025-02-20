-- do not change anything in this code or you will break it!
-- please give credits if ur gonna use this in ur script or in a yt video

local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local r = game:GetService("ReplicatedStorage").Events.StatEvent
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

wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
