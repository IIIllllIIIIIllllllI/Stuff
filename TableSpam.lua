warn("keybinds are r and t")
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == Enum.KeyCode.R then
local args = {
    [1] = "error"
}

game:GetService("Players").LocalPlayer.Character.TABLE.Remote:FireServer(unpack(args))
    end
end)

UserInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == Enum.KeyCode.T then
	for iv = 1, 25 do
local args = {
    [1] = "error"
}

game:GetService("Players").LocalPlayer.Character.TABLE.Remote:FireServer(unpack(args))
 
		end
    end
end)
-- yes
