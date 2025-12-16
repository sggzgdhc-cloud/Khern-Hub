-- KhernHub UI
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ToggleFarm = Instance.new("TextButton")

ScreenGui.Name = "KhernHub"
ScreenGui.Parent = game.CoreGui

Main.Size = UDim2.new(0, 250, 0, 150)
Main.Position = UDim2.new(0.5, -125, 0.5, -75)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Parent = ScreenGui
Main.Active = true
Main.Draggable = true

Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Text = "KhernHub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Parent = Main

ToggleFarm.Size = UDim2.new(0.8, 0, 0, 40)
ToggleFarm.Position = UDim2.new(0.1, 0, 0.5, -20)
ToggleFarm.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleFarm.Text = "Auto Farm : OFF"
ToggleFarm.Parent = Main

local farming = false

ToggleFarm.MouseButton1Click:Connect(function()
    farming = not farming
    ToggleFarm.Text = farming and "Auto Farm : ON" or "Auto Farm : OFF"
    _G.AutoFarm = farming
end)