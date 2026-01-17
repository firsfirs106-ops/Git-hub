local ServerStorage = game:GetService("ServerStorage")
local taw = script.Parent

local meat1 = "meat1"
local black1 = "black1"

local promp = Instance.new("ProximityPrompt")
promp.Parent = taw
promp.ActionText = "ว่าง"
promp.ObjectText = "หม้อ"
promp.HoldDuration = 2

local no_food = nil

promp.Triggered:Connect(function(player)
	
	if no_food ~= nil then
		local cooked = ServerStorage.FindFirstChild(fire1):Clone()
		if cooked then
			local toolcooked = cooked:Clone()
			toolcooked.Parent = player.Backpack
		
			local human = player.Character:FindFirstChild("Humanoid")
			if human then human:EquipTool(cooked) end
		
			no_food = Destroy()
			no_food = nil
			promp.ActionText = "ว่าง"
			
		end
		return
	end
	local meat1 = player.Backpack:FindFirstChild(meat1)
	if meat1 then
		local handle meat1.FindFirstChild("Handle")
		
		if handle then
			local OnStove = handle:Clone()
			OnStove.Parent = workspace
			OnStove.CFrame = taw.CFrame * CFrame.new(0, 0.5, 0)
			OnStove.Anchored = true
			OnStove.CanCollide = false
			
			meat1:Destroy()
			no_food = OnStove
			promp.Enabled = false
			
			wait(5)
			
			if no_food then no_food:Destroy() end
			
			local cooked1 = ServerStorage:FindFirstChild(black1)
			if cooked1 then
				local cookedPart = cooled1:Clone()
				cookedPart.Parent = workspace
				cookedPart.CFrame = taw.CFrame * CFrame.new(0, 0.5, 0)
				cookedPart.Anchored = true
				cookedPart.CanCollide = false
				
				no_food = cookedPart
			end
			
			promp.Enabled = true
			promp.ActionText = "หยิบ"
			
			
		end
	end
	
end)