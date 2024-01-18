local rs = game:GetService("ReplicatedStorage")

local UI = script.Parent
local button = UI.Bg.Button

button.MouseButton1Click:Connect(function()
    rs.Run:FireServer(UI.Bg.Cmd.Text)
end)