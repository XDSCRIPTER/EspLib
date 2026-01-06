local rs = game:GetService("ReplicatedStorage")
local packets = require(rs.Modules.Packets)
local Item_Ids = require(game:GetService("ReplicatedStorage").Modules.ItemIDS)
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
local runs = game:GetService("RunService")
local httpservice = game:GetService("HttpService")
local CurrentCamera = game.workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local Players = game:GetService("Players")
local localiservice = game:GetService("LocalizationService")
local marketservice = game:GetService("MarketplaceService")
local rbxservice = game:GetService("RbxAnalyticsService")
local placestructure
local tspmo = game:GetService("TweenService")



for i,v in pairs(game:Players:GetChildren()) do
local Text = Drawing.new("Text")
Text.Visible = false
Text.Text = Color3.new(1,1,1)
Text.Transparency = 1

function TextEsp()
    runs.RenderStepped:Connect(function()
    if v.Character ~= nil and v ~= plr and v.Character.Humanoid ~= nil and v.Character.Humanoid.Health > 0 then
         local Vector, OnScreen = CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

         if OnScreen then

         Text.Position = Vector2.new(Vector.X, Vector.Y)

         Text.Visible = true 
         else 
         Text.Visible = false 

         end
    end
    end)
 
end 
   coroutine.wrap(TextEsp)()
end




game.Players.PlayerAdded:Connect(function(v) 
    local Text = Drawing.new("Text")
    Text.Visible = false
    Text.Text = Color3.new(1,1,1)
    Text.Transparency = 1
    
    function TextEsp()
        runs.RenderStepped:Connect(function()
        if v.Character ~= nil and v ~= plr and v.Character.Humanoid ~= nil and v.Character.Humanoid.Health > 0 then
             local Vector, OnScreen = CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
    
             if OnScreen then
    
             Text.Position = Vector2.new(Vector.X, Vector.Y)
    
             Text.Visible = true 
             else 
             Text.Visible = false 
    
             end
        end
        end)
    
    end 
    coroutine.wrap(TextEsp)()
    
    end)
