local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local silentAimActive = true
local flyActive = false
local espActive = false
local flySpeed = 300
local rainbowTracerColor = 0

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

if isBlacklisted(LocalPlayer.Name) then
    game:GetService("Players").LocalPlayer:Kick("You have been BLACKLISTED! Please appeal at: discord.gg/nP4ZVx2mfB")
    wait(5)
    game:Shutdown()
    return
end

local function getNearestHeadToCursor()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health > 0 then
                local headPosition = player.Character.Head.Position
                local headScreenPosition, onScreen = Camera:WorldToViewportPoint(headPosition)
                if onScreen then
                    local cursorPosition = UserInputService:GetMouseLocation()
                    local distanceFromCursor = (Vector2.new(headScreenPosition.X, headScreenPosition.Y) - cursorPosition).Magnitude
                    if distanceFromCursor < shortestDistance then
                        shortestDistance = distanceFromCursor
                        closestPlayer = player
                    end
                end
            end
        end
    end

    if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
        return closestPlayer.Character.Head
    end
    return nil
end

local function onMouseButtonClick(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and silentAimActive then
        local targetHead = getNearestHeadToCursor()
        if targetHead then
            local aimPosition = targetHead.Position
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, aimPosition)
        end
    end
end

UserInputService.InputBegan:Connect(onMouseButtonClick)

local function toggleFly()
    flyActive = not flyActive
    local character = LocalPlayer.Character
    if flyActive and character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = rootPart

            RunService.RenderStepped:Connect(function()
                if flyActive then
                    local moveDirection = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        moveDirection = moveDirection + (Camera.CFrame.LookVector * flySpeed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        moveDirection = moveDirection - (Camera.CFrame.LookVector * flySpeed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        moveDirection = moveDirection - (Camera.CFrame.RightVector * flySpeed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        moveDirection = moveDirection + (Camera.CFrame.RightVector * flySpeed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        moveDirection = moveDirection + Vector3.new(0, flySpeed, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                        moveDirection = moveDirection - Vector3.new(0, flySpeed, 0)
                    end
                    bodyVelocity.Velocity = moveDirection
                else
                    bodyVelocity:Destroy()
                end
            end)
        end
    end
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        toggleFly()
    end
end)

local function createTracer(player)
    local tracer = Drawing.new("Line")
    tracer.Thickness = 2
    tracer.Transparency = 1
    tracer.Color = Color3.fromHSV(rainbowTracerColor, 1, 1)

    RunService.RenderStepped:Connect(function()
        if espActive and player.Character and player.Character:FindFirstChild("Head") then
            local headPosition = player.Character.Head.Position
            local screenPosition, onScreen = Camera:WorldToViewportPoint(headPosition)

            if onScreen then
                tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                tracer.To = Vector2.new(screenPosition.X, screenPosition.Y)
                rainbowTracerColor = (rainbowTracerColor + 0.01) % 1
                tracer.Color = Color3.fromHSV(rainbowTracerColor, 1, 1)
                tracer.Visible = true
            else
                tracer.Visible = false
            end
        else
            tracer.Visible = false
        end
    end)

    player.CharacterRemoving:Connect(function()
        tracer:Remove()
    end)
end

local function toggleESP()
    espActive = not espActive
    if espActive then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                createTracer(player)
            end
        end
        Players.PlayerAdded:Connect(function(player)
            if player ~= LocalPlayer then
                createTracer(player)
            end
        end)
    end
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.P then
        toggleESP()
    end
end)
