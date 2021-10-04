--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("Zentor | X", 5013109572)

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
S1:addButton("ReSet", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
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


S1:addTextbox("Speed Value", "Default", function(value, focusLost)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value

S1:addTextbox("Jump Value", "Default", function(value, focusLost)
game.Players.LocalPlayer.Character.Humanoid.Jumppower = value

end)
