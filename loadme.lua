-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(186, 186, 186)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.415326416, 0, 0.402564108, 0)
Frame.Size = UDim2.new(0.169347212, 0, 0.0525641032, 0)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(186, 186, 186)
TextBox.Position = UDim2.new(0.0782569572, 0, 0.230032206, 0)
TextBox.Size = UDim2.new(0.836879432, 0, 0.315718174, 0)
TextBox.Font = Enum.Font.Code
TextBox.ClearTextOnFocus = false
TextBox.PlaceholderText = "TOKEN"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(186, 186, 186)
TextButton.Position = UDim2.new(0.0734974071, 0, 0.634934962, 0)
TextButton.Size = UDim2.new(0.308234394, 0, 0.208333313, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Login"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(186, 186, 186)
TextButton_2.Position = UDim2.new(0.336067408, 0, 0.634934962, 0)
TextButton_2.Size = UDim2.new(0.319407582, 0, 0.208333313, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Buy"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(186, 186, 186)
TextButton_3.Position = UDim2.new(0.654503167, 0, 0.634934962, 0)
TextButton_3.Size = UDim2.new(0.260633439, 0, 0.208333313, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Help"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

--Functions

function showhelp()
    TextBox.Text = "https://discord.gg/EhDmD68xNW"
end

function buy()
    local teleportservice = game:GetService("TeleportService")
    local player = game.Players.LocalPlayer
    local placeid = 11446954517
    teleportservice:TeleportToPlaceInstance(placeid, player.Name)
end

function auth()
    local ip = "https://universalStarvDog.starvdog.repl.co/auth.php?action=Auth&"
    local token = TextBox.Text
    local result = game:HttpGet(ip .. "token=" .. token)
    
    if result == "Fucked Up" then
        TextBox.Text = "Invalid Token"
    elseif result == "Good" then
        TextBox.Text = "Logged In"
        local tokeninstance = Instance.new("StringValue")
        tokeninstance.Name = "sa_TOKEN"
        tokeninstance.Value = token
        tokeninstance.Parent = game.Players.LocalPlayer
        loadstring(game:HttpGet('https://mrbombastic.starvdog.repl.co'))()
        ScreenGui:Destroy()
    end
end

--Connections:

TextButton_3.MouseButton1Click:Connect(showhelp)
TextButton_2.MouseButton1Click:Connect(buy)
TextButton.MouseButton1Click:Connect(auth)
