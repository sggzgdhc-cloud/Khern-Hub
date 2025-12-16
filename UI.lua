-- KhernHub UI ภาษาไทย

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ToggleFarm = Instance.new("TextButton")

ScreenGui.Name = "KhernHub"
ScreenGui.Parent = game.CoreGui

-- ตัวกรอบหลัก
Main.Size = UDim2.new(0, 260, 0, 160)
Main.Position = UDim2.new(0.5, -130, 0.5, -80)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Parent = ScreenGui
Main.Active = true
Main.Draggable = true

-- หัวข้อ
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Text = "KhernHub | บล็อกฟุต"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Parent = Main

-- ปุ่มเปิด/ปิดฟาร์ม
ToggleFarm.Size = UDim2.new(0.85, 0, 0, 45)
ToggleFarm.Position = UDim2.new(0.075, 0, 0.5, -10)
ToggleFarm.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleFarm.TextSize = 16
ToggleFarm.Text = "ฟาร์มอัตโนมัติ : ปิด"
ToggleFarm.Parent = Main

-- ตัวแปรฟาร์ม
local farming = false

ToggleFarm.MouseButton1Click:Connect(function()
    farming = not farming
    _G.AutoFarm = farming

    if farming then
        ToggleFarm.Text = "ฟาร์มอัตโนมัติ : เปิด"
    else
        ToggleFarm.Text = "ฟาร์มอัตโนมัติ : ปิด"
    end
end)
