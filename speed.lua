local SPEED = 50 -- Change this number

local player = game.Players.LocalPlayer

local function setSpeed(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = SPEED
end

if player.Character then
    setSpeed(player.Character)
end

player.CharacterAdded:Connect(setSpeed)
