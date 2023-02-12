game.Lighting.GlobalShadows = false.
game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
local faces = {"Front", "Back", "Bottom", "Left", "Right", "Top"}
local text1 = Instance.new("TextLabel")
local text2 = Instance.new("TextLabel")
local gui = Instance.new("ScreenGui")
local playerName = game.Players.LocalPlayer.Name
gui.Name = "TestGui"
gui.Parent = game.Players[playerName].PlayerGui
text1.Name = "A60DetectThingy"
text1.Text = "No A60"
text1.TextScaled = true
text1.BackgroundColor3 = Color3.new(1, 1, 1)
text1.Size = UDim2.new(0, 100, 0, 100)
text1.Parent = game.Players[playerName].PlayerGui.TestGui
text2.Name = "A120DetectThingy"
text2.Text = "No A120"
text2.TextScaled = true
text2.BackgroundColor3 = Color3.new(1, 1, 1)
text2.Size = UDim2.new(0, 100, 0, 100)
text2.Position = UDim2.new(0, 0, 0, 100)
text2.Parent = game.Players[playerName].PlayerGui.TestGui
while true do
    if game.Workspace:FindFirstChild("A60") then
        if game.Workspace.A60:FindFirstChild("Main") then
            local a60 = game.Workspace.A60.Main.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            local dist = math.sqrt(math.pow(me.X - a60.X, 2) + math.pow(me.Z - a60.Z, 2))
            text1.Text = "A60: " .. math.round(dist * 10) / 10
            text1.BackgroundColor3 = Color3.new(1, 0, 0)
            if not game.Workspace.A60.Main:FindFirstChild("SurfaceGui") then
                for a = 1, 6 do
                    local surface = Instance.new("SurfaceGui")
                    surface.Parent = game.Workspace.A60.Main
                    surface.AlwaysOnTop = true
                    surface.Face = Enum.NormalId[faces[a]]
                    local frame = Instance.new("Frame", surface)
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BorderSizePixel = 0
                    frame.BackgroundTransparency = 0.5
                    frame.BackgroundColor3 = Color3.new(1, 0, 0)
                end
            end
        end
    else
        text1.Text = "No A60"
        text1.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    if game.Workspace:FindFirstChild("A120") then
        if game.Workspace.A120:FindFirstChild("Main") then
            local a120 = game.Workspace.A120.Main.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            local dist = math.sqrt(math.pow(me.X - a120.X, 2) + math.pow(me.Z - a120.Z, 2))
            text2.Text = "A120: " .. math.round(dist * 10) / 10
            text2.BackgroundColor3 = Color3.new(1, 0, 0)
            if not game.Workspace.A120.Main:FindFirstChild("SurfaceGui") then
                for a = 1, 6 do
                    local surface = Instance.new("SurfaceGui")
                    surface.Parent = game.Workspace.A120.Main
                    surface.AlwaysOnTop = true
                    surface.Face = Enum.NormalId[faces[a]]
                    local frame = Instance.new("Frame", surface)
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BorderSizePixel = 0
                    frame.BackgroundTransparency = 0.5
                    frame.BackgroundColor3 = Color3.new(1, 1, 1)
                end
            end
        end
    else
        text2.Text = "No A120"
        text2.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    wait()
end
