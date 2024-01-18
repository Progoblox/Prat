local rs = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")

---------------------------------------------------
------------------ Configuration ------------------
---------------------------------------------------

local function createUI(plr)
	local PratUI = Instance.new("ScreenGui")
	PratUI.Name = "PratUI"
	PratUI.Enabled = true
	PratUI.DisplayOrder = 0
	PratUI.ResetOnSpawn = true
	PratUI.IgnoreGuiInset = true
	PratUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Bg = Instance.new("ImageLabel", PratUI)
	Bg.Name = "Bg"
	Bg.LayoutOrder = 0
	Bg.ImageTransparency = 0.30000001192092896
	Bg.ImageColor3 = Color3.new(0, 0, 0)
	Bg.Active = false
	Bg.BorderColor3 = Color3.new(0, 0, 0)
	Bg.Size = UDim2.new(0.4716012179851532, 0, 0.11395348608493805, 0)
	Bg.BorderMode = Enum.BorderMode.Outline
	Bg.Visible = true
	Bg.AnchorPoint = Vector2.new(0.5, 0.5)
	Bg.Image = 'http://www.roblox.com/asset/?id=15364236507'
	Bg.BackgroundTransparency = 1
	Bg.Position = UDim2.new(0.499244749546051, 0, 0.1054263561964035, 0)
	Bg.Rotation = 0
	Bg.ZIndex = 1
	Bg.BorderSizePixel = 0
	Bg.BackgroundColor3 = Color3.new(1, 1, 1)

	local Button = Instance.new("TextButton", Bg)
	Button.Name = "Button"
	Button.LayoutOrder = 0
	Button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Button.TextDirection = Enum.TextDirection.Auto
	Button.Active = true
	Button.TextStrokeColor3 = Color3.new(0, 0, 0)
	Button.TextStrokeTransparency = 1
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.ZIndex = 1
	Button.BorderSizePixel = 0
	Button.Size = UDim2.new(0.21844962239265442, 0, 0.41860461235046387, 0)
	Button.LineHeight = 1
	Button.TextColor3 = Color3.new(0.3333333432674408, 1, 0)
	Button.BorderColor3 = Color3.new(0, 0, 0)
	Button.Text = 'Send'
	Button.Selectable = true
	Button.Visible = true
	Button.Rotation = 0
	Button.TextXAlignment = Enum.TextXAlignment.Center
	Button.BackgroundTransparency = 1
	Button.Position = UDim2.new(0.8763611912727356, 0, 0.7090650200843811, 0)
	Button.BorderMode = Enum.BorderMode.Outline
	Button.TextYAlignment = Enum.TextYAlignment.Center
	Button.TextScaled = false
	Button.BackgroundColor3 = Color3.new(1, 1, 1)
	Button.TextSize = 20

	local Cmd = Instance.new("TextBox", Bg)
	Cmd.Text = ""
	Cmd.Name = "Cmd"
	Cmd.LayoutOrder = 0
	Cmd.CursorPosition = 1
	Cmd.TextDirection = Enum.TextDirection.Auto
	Cmd.Active = true
	Cmd.TextStrokeColor3 = Color3.new(0, 0, 0)
	Cmd.LineHeight = 1
	Cmd.TextStrokeTransparency = 1
	Cmd.AnchorPoint = Vector2.new(0.5, 0.5)
	Cmd.MaxVisibleGraphemes = -1
	Cmd.PlaceholderText = 'Command'
	Cmd.PlaceholderColor3 = Color3.new(0.623529, 0.623529, 0.623529)
	Cmd.TextYAlignment = Enum.TextYAlignment.Top
	Cmd.ZIndex = 1
	Cmd.BorderSizePixel = 0
	Cmd.Size = UDim2.new(0.7375271320343018, 0, 0.32652002573013306, 0)
	Cmd.TextXAlignment = Enum.TextXAlignment.Left
	Cmd.BorderMode = Enum.BorderMode.Outline
	Cmd.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Cmd.TextColor3 = Color3.new(0.9686275124549866, 0.9686275124549866, 0.9686275124549866)
	Cmd.BorderColor3 = Color3.new(0, 0, 0)
	Cmd.Text = ""
	Cmd.TextEditable = true
	Cmd.SelectionStart = -1
	Cmd.Rotation = 0
	Cmd.Visible = true
	Cmd.BackgroundTransparency = 1
	Cmd.Position = UDim2.new(0.3983728587627411, 0, 0.7142910957336426, 0)
	Cmd.MultiLine = false
	Cmd.ClearTextOnFocus = false
	Cmd.TextScaled = false
	Cmd.BackgroundColor3 = Color3.new(1, 1, 1)
	Cmd.TextSize = 18

	local Title = Instance.new("TextLabel", Bg)
	Title.Name = "Title"
	Title.LayoutOrder = 0
	Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title.TextDirection = Enum.TextDirection.Auto
	Title.Active = false
	Title.TextStrokeColor3 = Color3.new(0, 0, 0)
	Title.TextStrokeTransparency = 1
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.ZIndex = 1
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0.9039077758789062, 0, 0.27131783962249756, 0)
	Title.LineHeight = 1
	Title.TextColor3 = Color3.new(0, 0.6666666865348816, 1)
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.Text = '$prat'
	Title.Selectable = false
	Title.Visible = true
	Title.Rotation = 0
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0.5080075860023499, 0, 0.24418604373931885, 0)
	Title.BorderMode = Enum.BorderMode.Outline
	Title.TextYAlignment = Enum.TextYAlignment.Center
	Title.TextScaled = false
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 22


	PratUI.Parent = plr.PlayerGui 
	PratUI.Bg.Title.Text = plr.Name.."$prat"
end

local function getReason(list, startIndex)
	local str = ""

	for i = startIndex, #list do 
		str = str..list[i].." "
	end

	return str
end

local function convertSecondsToDateString(seconds)
	return os.date("%c", seconds)
end

local function createsServerMessageUI()
	local ServerMessage = Instance.new("ScreenGui", script.Parent)
	ServerMessage.Name = "ServerMessage"
	ServerMessage.Enabled = false
	ServerMessage.DisplayOrder = 0
	ServerMessage.ResetOnSpawn = true
	ServerMessage.IgnoreGuiInset = true
	ServerMessage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Bg = Instance.new("Frame", ServerMessage)
	Bg.Name = "Bg"
	Bg.LayoutOrder = 0
	Bg.Active = false
	Bg.BorderColor3 = Color3.new(0, 0, 0)
	Bg.BorderMode = Enum.BorderMode.Outline
	Bg.Visible = true
	Bg.AnchorPoint = Vector2.new(0.5, 0.5)
	Bg.Size = UDim2.new(1, 0, 1, 0)
	Bg.BackgroundTransparency = 0.20000000298023224
	Bg.Position = UDim2.new(0.5, 0, 0.5, 0)
	Bg.Rotation = 0
	Bg.ZIndex = 1
	Bg.BorderSizePixel = 0
	Bg.BackgroundColor3 = Color3.new(0, 0, 0)

	local Message = Instance.new("TextLabel", Bg)
	Message.Name = "Message"
	Message.LayoutOrder = 0
	Message.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Message.TextDirection = Enum.TextDirection.Auto
	Message.Active = false
	Message.TextStrokeColor3 = Color3.new(0, 0, 0)
	Message.TextStrokeTransparency = 1
	Message.AnchorPoint = Vector2.new(0.5, 0.5)
	Message.ZIndex = 1
	Message.BorderSizePixel = 0
	Message.Size = UDim2.new(0.5009064078330994, 0, 0.17931035161018372, 0)
	Message.LineHeight = 1
	Message.Selectable = false
	Message.TextColor3 = Color3.new(1, 1, 1)
	Message.BorderColor3 = Color3.new(0, 0, 0)
	Message.Text = ''
	Message.Visible = true
	Message.TextXAlignment = Enum.TextXAlignment.Center
	Message.Rotation = 0
	Message.TextSize = 20
	Message.BackgroundTransparency = 1
	Message.Position = UDim2.new(0.499244749546051, 0, 0.5396551489830017, 0)
	Message.BorderMode = Enum.BorderMode.Outline
	Message.TextYAlignment = Enum.TextYAlignment.Top
	Message.TextScaled = false
	Message.BackgroundColor3 = Color3.new(1, 1, 1)

	local User = Instance.new("TextLabel", Bg)
	User.Name = "User"
	User.LayoutOrder = 0
	User.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	User.TextDirection = Enum.TextDirection.Auto
	User.Active = false
	User.TextStrokeColor3 = Color3.new(0, 0, 0)
	User.TextStrokeTransparency = 1
	User.AnchorPoint = Vector2.new(0.5, 0.5)
	User.ZIndex = 1
	User.BorderSizePixel = 0
	User.Size = UDim2.new(0.30000001192092896, 0, 0.10000000149011612, 0)
	User.LineHeight = 1
	User.Selectable = false
	User.TextColor3 = Color3.new(1, 1, 1)
	User.BorderColor3 = Color3.new(0, 0, 0)
	User.Text = 'Label'
	User.Visible = true
	User.TextXAlignment = Enum.TextXAlignment.Center
	User.Rotation = 0
	User.TextSize = 25
	User.BackgroundTransparency = 1
	User.Position = UDim2.new(0.5, 0, 0.27586206793785095, 0)
	User.BorderMode = Enum.BorderMode.Outline
	User.TextYAlignment = Enum.TextYAlignment.Center
	User.TextScaled = false
	User.BackgroundColor3 = Color3.new(1, 1, 1)

	return ServerMessage
end

local function createServerBannerUI()
	local ServerBanner = Instance.new("ScreenGui", script.Parent)
	ServerBanner.Name = "ServerBanner"
	ServerBanner.Enabled = false
	ServerBanner.DisplayOrder = 0
	ServerBanner.ResetOnSpawn = true
	ServerBanner.IgnoreGuiInset = true
	ServerBanner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Bg = Instance.new("Frame", ServerBanner)
	Bg.Name = "Bg"
	Bg.LayoutOrder = 0
	Bg.Active = false
	Bg.BorderColor3 = Color3.new(0, 0, 0)
	Bg.BorderMode = Enum.BorderMode.Outline
	Bg.Visible = true
	Bg.AnchorPoint = Vector2.new(0.5, 0.5)
	Bg.Size = UDim2.new(1, 0, 0.2, 0)
	Bg.BackgroundTransparency = 0.20000000298023224
	Bg.Position = UDim2.new(0.5, 0,0.1, 0)
	Bg.Rotation = 0
	Bg.ZIndex = 1
	Bg.BorderSizePixel = 0
	Bg.BackgroundColor3 = Color3.new(0, 0, 0)

	local Message = Instance.new("TextLabel", Bg)
	Message.Name = "Message"
	Message.LayoutOrder = 0
	Message.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Message.TextDirection = Enum.TextDirection.Auto
	Message.Active = false
	Message.TextStrokeColor3 = Color3.new(0, 0, 0)
	Message.TextStrokeTransparency = 1
	Message.AnchorPoint = Vector2.new(0.5, 0.5)
	Message.ZIndex = 1
	Message.BorderSizePixel = 0
	Message.Size = UDim2.new(1,0,1,0)
	Message.LineHeight = 1
	Message.Selectable = false
	Message.TextColor3 = Color3.new(1, 1, 1)
	Message.BorderColor3 = Color3.new(0, 0, 0)
	Message.Text = ''
	Message.Visible = true
	Message.TextXAlignment = Enum.TextXAlignment.Center
	Message.Rotation = 0
	Message.TextSize = 25
	Message.BackgroundTransparency = 1
	Message.Position = UDim2.new(0.5,0,0.5,0)
	Message.BorderMode = Enum.BorderMode.Outline
	Message.TextYAlignment = Enum.TextYAlignment.Center
	Message.TextScaled = false
	Message.BackgroundColor3 = Color3.new(1, 1, 1)

	return ServerBanner
end

plrs.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		createUI(plr)
		local s = script.LocalScript:Clone()
		s.Parent = plr.PlayerGui.PratUI
		s.Enabled = true

		-- Server Banner
		local possibleServerBanner = script.Parent:FindFirstChild("ServerBannerV")
		if possibleServerBanner then
			local ui = createServerBannerUI()
			ui.Bg.Message.Text = possibleServerBanner.Value
			for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
				local UI_p = ui:Clone()
				UI_p.Parent = player.PlayerGui
				UI_p.Enabled = true
			end
			ui:Destroy()
		end
	end)
end)


------------------------------------------------------
------------------ Commands Manager ------------------
------------------------------------------------------

rs.Run.OnServerEvent:Connect(function(plr, CmdText)
	local args = CmdText:split(" ")

	if args[1] == "kick" and #args >= 3 then
		local targetName = args[2]
		local reason = getReason(args, 3)
		local target
		local numericTargetName = tonumber(targetName)
		if numericTargetName then target = plrs:GetPlayerByUserId(numericTargetName)
		else target = plrs:GetPlayerFromCharacter(workspace:FindFirstChild(targetName))
		end

		if target ~= nil then target:kick("[PRAT] Kick - "..reason) end
	elseif args[1] == "ban" and #args >= 3 then
		local targetName = args[2]
		local reason = getReason(args, 3)
		local target = plrs:GetPlayerFromCharacter(workspace:FindFirstChild(targetName))
		if target ~= nil then
			target.DBPrat.isBanned.Value = true
			target.DBPrat.ReasonBan.Value = reason
			target:kick("[PRAT] Ban - "..reason)
		end
	elseif args[1] == "tempban" and #args >= 4 then
		local targetName = args[2]
		local currentTime = os.time()
		local timeInDay = tonumber(args[3])
		local reason = getReason(args, 4)
		local target = plrs:GetPlayerFromCharacter(workspace:FindFirstChild(targetName))
		if target ~= nil and timeInDay ~= nil then
			local expirationTime = currentTime + (timeInDay * 24 * 60 * 60) -- convert days to seconds
			target.DBPrat.isBanned.Value = true
			target.DBPrat.ReasonBan.Value = reason
			target.DBPrat.timeTempBan.Value = expirationTime
			target:kick("[PRAT] Tempban Expiration Date:"..convertSecondsToDateString(expirationTime).." - "..reason)
		end
	elseif args[1] == "servermessage" and #args >= 2 then
		local message = getReason(args, 2)
		local ui = createsServerMessageUI()
		ui.Bg.User.Text = plr.Name
		ui.Bg.Message.Text = message
		for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
			local UI_p = ui:Clone()
			UI_p.Parent = player.PlayerGui
			UI_p.Enabled = true
			if #message > 50 then task.wait(3)
			else task.wait(2)
			end
			UI_p:Destroy()
		end
		ui:Destroy()
	elseif args[1] == "serverbanner" and #args >= 2 then
		local message = getReason(args, 2)
		local ui = createServerBannerUI()
		ui.Bg.Message.Text = message
		local v = Instance.new("StringValue", script.Parent)
		v.Name = "ServerBannerV"
		v.Value = message
		for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
			local UI_p = ui:Clone()
			UI_p.Parent = player.PlayerGui
			UI_p.Enabled = true
		end
	elseif args[1] == "serverbanner" and #args < 2 then
		if script.Parent:FindFirstChild("ServerBannerV") then
			script.Parent:FindFirstChild("ServerBannerV"):Destroy()
		end
		for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
			local ui = player.PlayerGui:FindFirstChild("ServerBanner")
			if ui then
				ui:Destroy()
			end
		end
	end
end)