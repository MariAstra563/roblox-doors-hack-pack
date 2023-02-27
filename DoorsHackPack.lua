local playerName = game.Players.LocalPlayer.Name --
if game.Players[playerName].PlayerGui:FindFirstChild("TestGui") then
    game.Players[playerName].PlayerGui.TestGui:Destroy()
end
local faces = {"Front","Back","Bottom","Left","Right","Top"}
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
local text1 = Instance.new("TextLabel")
local text2 = Instance.new("TextLabel")
local text3 = Instance.new("TextLabel")
local gui = Instance.new("ScreenGui")
gui.Name = "TestGui"
gui.Parent = game.Players[playerName].PlayerGui
text1.Name = "RushDetectThingy"
text1.Text = "No Rush"
text1.TextScaled = true
text1.BackgroundColor3 = Color3.new(1, 1, 1)
text1.Size = UDim2.new(0, 100, 0, 100)
text1.Parent = game.Players[playerName].PlayerGui.TestGui
text2.Name = "AmbushDetectThingy"
text2.Text = "No Ambush"
text2.TextScaled = true
text2.BackgroundColor3 = Color3.new(1, 1, 1)
text2.Size = UDim2.new(0, 100, 0, 100)
text2.Position = UDim2.new(0, 0, 0, 100)
text2.Parent = game.Players[playerName].PlayerGui.TestGui
text3.Name = "SeekDistanceThingy"
text3.Text = "No Seek"
text3.TextScaled = true
text3.BackgroundColor3 = Color3.new(1, 1, 1)
text3.Size = UDim2.new(0, 100, 0, 100)
text3.Position = UDim2.new(0, 0, 0, 200)
text3.Parent = game.Players[playerName].PlayerGui.TestGui
while true do
    for i, o in pairs(game.Workspace.CurrentRooms:GetChildren()) do
        if o.Name == "100" then
            for i2, o2 in pairs(o:GetChildren()) do
                if o2.Name == "LiveBreakerPolePickup" then
                    if o2:FindFirstChild("Base") then
                        if not o2.Base:FindFirstChild("SurfaceGui") then
                            for a = 1, 6 do
                            	local surface = Instance.new("SurfaceGui")
                                surface.Parent = o2.Base
                                surface.AlwaysOnTop = true
                                surface.Face = Enum.NormalId[faces[a]]
                            	local frame = Instance.new("Frame", surface)
                            	frame.Size = UDim2.new(1, 0, 1, 0)
                            	frame.BorderSizePixel = 0
                            	frame.BackgroundTransparency = 0.5
                            	frame.BackgroundColor3 = Color3.new(0, 0, 1)
                            end
                        end
                    end
                elseif o2.Name == "FigureSetup" then
                    if o2:FindFirstChild("Figure") then
                        if not o2.Figure:FindFirstChild("HighlightA") then
                            local hl = Instance.new("Highlight")
                            hl.Name = "HighlightA"
                            hl.Parent = o.Figure
                            hl.OutlineTransparency = 1
                            hl.FillTransparency = 0.25
                            hl.FillColor = Color3.new(1, 0, 0)
                        end
                    end
                end
            end
        end
        if o:FindFirstChild("Assets") then
            if o.Assets:FindFirstChild("KeyObtain") then
                if not o.Assets.KeyObtain.Hitbox:FindFirstChild("SurfaceGui") then
                    for a = 1, 6 do
                        local surface = Instance.new("SurfaceGui")
                        surface.Parent = o.Assets.KeyObtain.Hitbox
                        surface.AlwaysOnTop = true
                        surface.Face = Enum.NormalId[faces[a]]
                        local frame = Instance.new("Frame", surface)
                        frame.Size = UDim2.new(1, 0, 1, 0)
                        frame.BorderSizePixel = 0
                        frame.BackgroundTransparency = 0.5
                        frame.BackgroundColor3 = Color3.new(0, 0, 1)
                    end
                end
            end
            for i2, o2 in pairs(o.Assets:GetChildren()) do
                for i3, o3 in pairs(o2:GetChildren()) do
                    if o3:FindFirstChild("KeyObtain") then
                        if o3.KeyObtain:FindFirstChild("Hitbox") then
                            if not o3.KeyObtain.Hitbox:FindFirstChild("SurfaceGui") then
                                for a = 1, 6 do
                                    local surface = Instance.new("SurfaceGui")
                                    surface.Parent = o3.KeyObtain.Hitbox
                                    surface.AlwaysOnTop = true
                                    surface.Face = Enum.NormalId[faces[a]]
                                    local frame = Instance.new("Frame", surface)
                                    frame.Size = UDim2.new(1, 0, 1, 0)
                                    frame.BorderSizePixel = 0
                                    frame.BackgroundTransparency = 0.5
                                    frame.BackgroundColor3 = Color3.new(0, 0, 1)
                                end
                            end
                        end
                    end
                end
            end
            if o:FindFirstChild("RoomEntrance") and not o.RoomEntrance:FindFirstChild("SurfaceGui") then
                o.RoomEntrance.Transparency = 0.5
                o.RoomEntrance.Size = Vector3.new(5, 8, 4)
                for a = 1, 6 do
                    local surface = Instance.new("SurfaceGui")
                    surface.Parent = o.RoomEntrance
                    surface.AlwaysOnTop = true
                    surface.Face = Enum.NormalId[faces[a]]
                    local frame = Instance.new("Frame", surface)
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BorderSizePixel = 0
                    frame.BackgroundTransparency = 0.5
                    frame.BackgroundColor3 = Color3.new(0, 1, 0)
                end
            end
            for i2, o2 in pairs(o.Assets:GetChildren()) do
                if o2.Name == "Snare" then
                    if o2:FindFirstChild("Hitbox") then
                        if not o2.Hitbox:FindFirstChild("SurfaceGui") then
                            for a = 1, 6 do
                                local surface = Instance.new("SurfaceGui")
                                surface.Parent = o2.Hitbox
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
                end
            end
            if o.Assets:FindFirstChild("LeverForGate") then
                if o.Assets.LeverForGate:FindFirstChild("Main") then
                    if not o.Assets.LeverForGate.Main:FindFirstChild("SurfaceGui") then
                        for a = 1, 6 do
                            local surface = Instance.new("SurfaceGui")
                            surface.Parent = o.Assets.LeverForGate.Main
                            surface.AlwaysOnTop = true
                            surface.Face = Enum.NormalId[faces[a]]
                            local frame = Instance.new("Frame", surface)
                            frame.Size = UDim2.new(1, 0, 1, 0)
                            frame.BorderSizePixel = 0
                            frame.BackgroundTransparency = 0.5
                            frame.BackgroundColor3 = Color3.new(0, 0, 1)
                        end
                    end
                end
            end
        end
    end
    if game.Workspace:FindFirstChild("RushMoving") then
        if game.Workspace.RushMoving:FindFirstChild("RushNew") then
            local rush = game.Workspace.RushMoving.RushNew.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            local dist = math.sqrt(math.pow(me.X - rush.X, 2) + math.pow(me.Z - rush.Z, 2))
            text1.Text = "Rush: " .. math.round(dist * 10) / 10
            text1.BackgroundColor3 = Color3.new(1, 0, 0)
            if not game.Workspace.RushMoving.RushNew:FindFirstChild("SurfaceGui") then
                for a = 1, 6 do
                    local surface = Instance.new("SurfaceGui")
                    surface.Parent = game.Workspace.RushMoving.RushNew
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
        text1.Text = "No Rush"
        text1.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    if game.Workspace:FindFirstChild("AmbushMoving") then
        if game.Workspace.AmbushMoving:FindFirstChild("RushNew") then
            local ambush = game.Workspace.AmbushMoving.RushNew.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            local dist = math.sqrt(math.pow(me.X - ambush.X, 2) + math.pow(me.Z - ambush.Z, 2))
            text2.Text = "Ambush: " .. math.round(dist * 10) / 10
            text2.BackgroundColor3 = Color3.new(1, 0, 0)
            if not game.Workspace.AmbushMoving.RushNew:FindFirstChild("SurfaceGui") then
                for a = 1, 6 do
                    local surface = Instance.new("SurfaceGui")
                    surface.Parent = game.Workspace.AmbushMoving.RushNew
                    surface.AlwaysOnTop = true
                    surface.Face = Enum.NormalId[faces[a]]
                    local frame = Instance.new("Frame", surface)
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BorderSizePixel = 0
                    frame.BackgroundTransparency = 0.5
                    frame.BackgroundColor3 = Color3.new(0, 1, 1)
                end
            end
        end
    else
        text2.Text = "No Ambush"
        text2.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    if game.Workspace:FindFirstChild("SeekMoving") then
        if game.Workspace.SeekMoving:FindFirstChild("SeekRig") then
            local seek = game.Workspace.SeekMoving.SeekRig.UpperTorso.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            local dist = math.sqrt(math.pow(me.X - seek.X, 2) + math.pow(me.Z - seek.Z, 2))
            text3.Text = "Seek: " .. math.round(dist * 10) / 10
            text3.BackgroundColor3 = Color3.new(1, 0, 0)
        end
    else
        text3.Text = "No Seek"
        text3.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    if game.Workspace.CurrentRooms:FindFirstChild("50") then
        if game.Workspace.CurrentRooms["50"]:FindFirstChild("Assets") then
            for i, o in pairs(game.Workspace.CurrentRooms["50"].Assets:GetChildren()) do
                if o.Name == "Super Cool Bookshelf With Hint Book" and o:FindFirstChild("HintBook") then
                    if not o.HintBook:FindFirstChild("SurfaceGui") then
                        for a = 1, 6 do
                            local surface = Instance.new("SurfaceGui")
                            surface.Parent = o.HintBook
                            surface.AlwaysOnTop = true
                            surface.Face = Enum.NormalId[faces[a]]
                            local frame = Instance.new("Frame", surface)
                            frame.Size = UDim2.new(1, 0, 1, 0)
                            frame.BorderSizePixel = 0
                            frame.BackgroundTransparency = 0.5
                            frame.BackgroundColor3 = Color3.new(0, 0, 1)
                        end
                    end
                end
            end
        end
    end
    wait()
end
