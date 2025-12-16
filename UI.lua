-- KhernHub | เมนูภาษาไทย

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local BtnFarm = Instance.new("TextButton")
local BtnClose = Instance.new("TextButton")

ScreenGui.Name = "KhernHub"
ScreenGui.Parent = game.CoreGui

-- กล่องหลัก
Main.Size = UDim2.new(0, 280, 0, 180)
Main.Position = UDim2.new(0.5, -140, 0.5, -90)
Main.BackgroundColor3 = Color3.fromRGB(30,30,30)
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

-- หัวข้อ
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(20,20,20)
Title.Text = "KhernHub | บล็อกฟุต"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextSize = 18
Title.Parent = Main

-- ปุ่มฟาร์ม
BtnFarm.Size = UDim2.new(0.85, 0, 0, 45)
BtnFarm.Position = UDim2.new(0.075, 0, 0.45, 0)
BtnFarm.BackgroundColor3 = Color3.fromRGB(50,50,50)
BtnFarm.TextColor3 = Color3.fromRGB(255,255,255)
BtnFarm.TextSize = 16
BtnFarm.Text = "ฟาร์มอัตโนมัติ : ปิด"
BtnFarm.Parent = Main

-- ปุ่มปิดเมนู
BtnClose.Size = UDim2.new(0.85, 0, 0, 40)
BtnClose.Position = UDim2.new(0.075, 0, 0.75, 0)
BtnClose.BackgroundColor3 = Color3.fromRGB(80,40,40)
BtnClose.TextColor3 = Color3.fromRGB(255,255,255)
BtnClose.TextSize = 16
BtnClose.Text = "ปิดเมนู"
BtnClose.Parent = Main

-- ระบบฟาร์ม
local farming = false
BtnFarm.MouseButton1Click:Connect(function()
    farming = not farming
    _G.AutoFarm = farming
    BtnFarm.Text = farming and "ฟาร์มอัตโนมัติ : เปิด" or "ฟาร์มอัตโนมัติ : ปิด"
end)

-- ปิด UI
BtnClose.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

