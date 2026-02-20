local a = game:GetService("Players")
local b = a.LocalPlayer
local c = game:GetService("ReplicatedStorage")
local function d()
local e = {
f = false
}
if e.f then
local g = pcall(function()
replicatesignal(Instance.new("Frame").MouseWheelForward, 120, 120)
end)
e.f = g
end
return e
end
local function h()
local i = d()
local j = game.ReplicatedStorage.RemotesFolder
while true do
pcall(function()
if not b.Character then
b.CharacterAdded:Wait()
task.wait(2)
end
if i["f"] then
replicatesignal(b.Kill)
else
j.Underwater:FireServer(true)
task.wait(2)
j.Underwater:FireServer(false)
end            
task.wait(1)
j.Statistics:FireServer()
task.wait(1)
end)
end
end
while true do
h()
task.wait()
end