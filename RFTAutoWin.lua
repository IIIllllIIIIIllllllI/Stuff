while wait(0.2) do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local winPart = workspace:WaitForChild("WinPart")

character:SetPrimaryPartCFrame(winPart.CFrame)
end
