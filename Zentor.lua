--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("ZenT | X", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(207, 17, 26),
Glow = Color3.fromRGB(66, 245, 188),
Accent = Color3.fromRGB(66, 245, 188),
LightContrast = Color3.fromRGB(66, 245, 188),
DarkContrast = Color3.fromRGB(66, 245, 188),  
TextColor = Color3.fromRGB(66, 245, 188)
}


-- first page
local page = venyx:addPage("Main", 5012544693)
local S1 = page:addSection("Player")
S1:addButton("Reset", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

S1:addButton("Anti Kick Script", function()
local mt = getrawmetatable(game)
    local old = mt.__namecall
    local protect = newcclosure or protect_function

    if not protect then
        notify("Incompatible Exploit Warning", "Your exploit does not support protection against stack trace errors, resulting to fallback function")
        protect = function(f) return f end
    end

    setreadonly(mt, false)
    mt.__namecall = protect(function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" then
            wait(9e9)
            return
        end
        return old(self, ...)
    end)
    hookfunction(Players.LocalPlayer.Kick,protect(function() wait(9e9) end))
end)

S1:addButton("Infinite Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()

end)

S1:addToggle("Add Cash", nil, function(cash)
_G.Loop = cash --true ค่าเปิด / False ค่าปิด
while _G.Loop do
local args = {
    [1] = 1000}
game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args)) 
wait()
end
end)

S1:addToggle("Delete Cash", nil, function(cash)
      _G.Loop = cash
    
    while _G.Loop do
local args = {
    [1] = -1000
}

game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args))
wait()
end
end)

S1:addTextbox("Speed Value", "Default", function(value, focusLost)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

S1:addTextbox("Jump Value", "Default", function(value, focusLost)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value

end)


local page = venyx:addPage("Lag Server", 5012544693)
local S2 = page:addSection("Lag Server")

S2:addToggle("Auto Buy Light", nil, function(state)
local a =  game:GetService("Workspace")["CLICK BUY"]["Easy Shop System"].ClickShop.ClickDetector
      _G.Loop = state
    
    while _G.Loop do
fireclickdetector(a)
wait()
end
end)

S2:addButton("Equip All", function()
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
             tool.Parent = game:GetService("Players").LocalPlayer.Character -- I didn't use Equip because the Equip function unequips any other tools in your character.
        end
    end    
end)

S2:addToggle("Auto Ping Server", nil, function(state)
local a =  game:GetService("Workspace")["CLICK BUY"]["Easy Shop System"].ClickShop.ClickDetector
        local a =  game:GetService("Workspace")["CLICK BUY"]["Easy Shop System"].ClickShop.ClickDetector
          _G.Loop = state
    
    while _G.Loop do
   
fireclickdetector(a)  

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.71835327148, 5.2000002861023, 39.463813781738)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-172.96820068359, 5.199999332428, 72.367225646973)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-174.29846191406, 5.199999332428, 36.59744644165)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-209.4362487793, 5.199999332428, 74.201538085938)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-148.49053955078, 5.199999332428, 55.769100189209)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-210.12980651855, 5.2000002861023, 39.003532409668)
wait()
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
             tool.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end


wait()
end
end)

local page = venyx:addPage("Talaport", 5012544693)
local S3 = page:addSection("Talaport")

S3:addButton("Spawn", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-233.90841674805, 4.6999983787537, 34.229072570801)
end)
S3:addButton("Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.04667663574, 5.1427674293518, 66.418151855469)
end)
S3:addButton("Fishing Spot", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.447017669678, 3.1427674293518, 276.79483032227)
end)
S3:addButton("In Door", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16945.673828125, -5.2009825706482, 162.38534545898)
end)
S3:addButton("Men's Bathroom", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.06106567383, 6.0220756530762, -63.645500183105)
end)
S3:addButton("Women's Bathroom", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-189.2109375, 6.0163254737854, -115.49609375)
end)
S3:addButton("Village", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.80859375, 13.627141952515, 29.070020675659)
end)

local page = venyx:addPage("Body", 5012544693)
local S4 = page:addSection("Body")

S4:addButton("Delete Left Leg"), 5012544693)
game.Players.LocalPlayer.Character["LeftUpperLeg"]:Remove()
end)
S4:addButton("Delete Right Leg"), 5012544693
game.Players.LocalPlayer.Character["RightUpperLeg"]:Remove()
end)
S4:addButton("Delete Left Arm"), 5012544693
game.Players.LocalPlayer.Character["LeftUpperArm"]:Remove()
end)
S4:addButton("Delete Right Arm"), 5012544693
game.Players.LocalPlayer.Character["RightUpperArm"]:Remove()
end)
S4:addButton("Remove GamePass Boombox"), 5012544693
game.Players.LocalPlayer.Character["HyPerBoomBox"]:Remove()
end)
