local DDS = game:GetService("DataStoreService")
local PlayerSave = DDS:GetDataStore("DBPrat")
local PlayerInSaving=0

game.Players.PlayerAdded:Connect(function(player)

	local DBPrat = Instance.new("Folder", player)
	DBPrat.Name = "DBPrat"

	-------------------------------------------
	local isBanned = Instance.new("BoolValue", DBPrat)
	isBanned.Name = "isBanned"

	local ReasonBan = Instance.new("StringValue", DBPrat)
	ReasonBan.Name = "ReasonBan"

	local timeTempBan = Instance.new("IntValue", DBPrat)
	timeTempBan.Name = "timeTempBan"

	--------------------- Save -------------------------

	local maTable = nil
	local Succ, err = pcall(function()
		maTable = PlayerSave:GetAsync(player.UserId) or nil
	end)
	if Succ then
		local saveSuccesValue = Instance.new("BoolValue", player)
		saveSuccesValue.Name="saveSuccesValue"
	else
		player:Kick("Sorry, load save failed. Please rejoin to retry!")
	end
	if maTable~=nil and Succ then
		isBanned.Value = maTable["isBanned"]
		ReasonBan.Value =  maTable["ReasonBan"]
		timeTempBan.Value = maTable["timeTempBan"] 
	end
	while true do
		wait(360)   
		PlayerInSaving=PlayerInSaving+1
		local save = {}
		save["isBanned"]=player.DBPrat.isBanned.Value
		save["ReasonBan"]=player.DBPrat.ReasonBan.Value
		save["timeTempBan"]=player.DBPrat.timeTempBan.Value
		pcall(function()
			PlayerSave:SetAsync(player.UserId, save)
		end)
		PlayerInSaving=PlayerInSaving-1
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	if player:FindFirstChild("saveSuccesValue") then
		PlayerInSaving=PlayerInSaving+1
		local save = {}
		save["isBanned"]=player.DBPrat.isBanned.Value
		save["ReasonBan"]=player.DBPrat.ReasonBan.Value
		save["timeTempBan"]=player.DBPrat.timeTempBan.Value
		pcall(function()
			PlayerSave:SetAsync(player.UserId, save)
		end)
		PlayerInSaving=PlayerInSaving-1
	end
end)

game.OnClose = (function()
	if PlayerInSaving>0 then
		while PlayerInSaving>0 do wait() end
	end
end)