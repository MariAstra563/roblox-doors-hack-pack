local playerName = game.Players.LocalPlayer.Name
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("TestGui") then
    game.Players.LocalPlayer.PlayerGui.TestGui:Destroy()
end
local faces = {"Front", "Back", "Bottom", "Left", "Right", "Top"}
local snareParts= {"Void", "Rings", "Base"}
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
local text1 = Instance.new("TextLabel")
local text2 = Instance.new("TextLabel")
local text3 = Instance.new("TextLabel")
local gui = Instance.new("ScreenGui")
gui.Name = "TestGui"
gui.Parent = game.Players.LocalPlayer.PlayerGui
text1.Name = "RushDetectThingy"
text1.Text = "No Rush"
text1.TextScaled = true
text1.BackgroundColor3 = Color3.new(1, 1, 1)
text1.Size = UDim2.new(0, 100, 0, 100)
text1.Parent = game.Players.LocalPlayer.PlayerGui.TestGui
text2.Name = "AmbushDetectThingy"
text2.Text = "No Ambush"
text2.TextScaled = true
text2.BackgroundColor3 = Color3.new(1, 1, 1)
text2.Size = UDim2.new(0, 100, 0, 100)
text2.Position = UDim2.new(0, 0, 0, 100)
text2.Parent = game.Players.LocalPlayer.PlayerGui.TestGui
text3.Name = "SeekDistanceThingy"
text3.Text = "No Seek"
text3.TextScaled = true
text3.BackgroundColor3 = Color3.new(1, 1, 1)
text3.Size = UDim2.new(0, 100, 0, 100)
text3.Position = UDim2.new(0, 0, 0, 200)
text3.Parent = game.Players.LocalPlayer.PlayerGui.TestGui
while true do
    for i, o in pairs(game.Workspace:GetChildren()) do
        if o:FindFirstChild("Humanoid") and o.Name ~= game.Players.LocalPlayer.Name then
            if not o:FindFirstChild("HighlightA") then
                local hl = Instance.new("Highlight")
                hl.Name = "HighlightA"
                hl.Parent = o
                hl.OutlineTransparency = 1
                hl.FillTransparency = 0.25
                hl.FillColor = Color3.new(0, 1, 0)
            end
        end
        if o:FindFirstChild("HumanoidRootPart") and o.Name ~= playerName then
            if not o.HumanoidRootPart:FindFirstChild("DisplayUserGui") then
                local dug = Instance.new("BillboardGui")
                dug.Name = "DisplayUserGui"
                dug.AlwaysOnTop = true
                dug.Parent = o.HumanoidRootPart
                dug.Size = UDim2.new(0, 100, 0, 100)
                local ug = Instance.new("TextLabel")
                ug.Parent = dug
                ug.Size = UDim2.new(0, 100, 0, 100)
                ug.TextScaled = true
                ug.Text = o.Name
                ug.BorderSizePixel = 0
                ug.BackgroundTransparency = 1
                ug.TextStrokeColor3 = Color3.new(0, 0, 0)
                ug.TextStrokeTransparency = 0
                ug.TextColor3 = Color3.new(0, 1, 0)
            end
        end
    end
    for i, o in pairs(game.Workspace.CurrentRooms:GetChildren()) do
        if o:FindFirstChild("Door") then
            if o.Door:FindFirstChild("Door") then
                if not o.Door.Door:FindFirstChild("SurfaceGui") then
                    for a = 1, 6 do
                        local surface = Instance.new("SurfaceGui")
                        surface.Parent = o.Door.Door
                        surface.AlwaysOnTop = true
                        surface.Face = Enum.NormalId[faces[a]]
                        local frame = Instance.new("Frame", surface)
                        frame.Size = UDim2.new(1, 0, 1, 0)
                        frame.BorderSizePixel = 0
                        frame.BackgroundTransparency = 0.5
                        frame.BackgroundColor3 = Color3.new(0, 1, 0)
                    end
                end
            end
        end
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
                    if o2:FindFirstChild("FigureRagdoll") then
                        if not o2.FigureRagdoll:FindFirstChild("HighlightA") then
                            local hl = Instance.new("Highlight")
                            hl.Name = "HighlightA"
                            hl.Parent = o2.FigureRagdoll
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
                if o.Assets.KeyObtain:FindFirstChild("Hitbox") then
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
            end
            for i2, o2 in pairs(o.Assets:GetChildren()) do
                if o2:FindFirstChild("GoldPile") then
                    if o2.GoldPile:FindFirstChild("Hitbox") then
                        if not o2.GoldPile.Hitbox:FindFirstChild("DisplayObjectGui") then
                            local dug = Instance.new("BillboardGui")
                            dug.Name = "DisplayObjectGui"
                            dug.AlwaysOnTop = true
                            dug.Parent = o2.GoldPile.Hitbox
                            dug.Size = UDim2.new(0, 50, 0, 50)
                            local ug = Instance.new("TextLabel")
                            ug.Parent = dug
                            ug.Size = UDim2.new(0, 50, 0, 50)
                            ug.TextScaled = true
                            ug.Text = "Gold"
                            ug.BorderSizePixel = 0
                            ug.BackgroundTransparency = 1
                            ug.TextStrokeColor3 = Color3.new(0, 0, 0)
                            ug.TextStrokeTransparency = 0
                            ug.TextColor3 = Color3.new(1, 1, 0)
                        end
                    end
                end
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
            for i2, o2 in pairs(o.Assets:GetChildren()) do
                if o2.Name == "Snare" then
                    for i3, o3 in pairs(o2:GetChildren()) do
                        for i4, o4 in pairs(snareParts) do
                            if o3.Name == o4 and not o3:FindFirstChild("HighlightA") then
                                local hl = Instance.new("Highlight")
                                hl.Name = "HighlightA"
                                hl.Parent = o3
                                hl.OutlineTransparency = 1
                                hl.FillTransparency = 0.25
                                hl.FillColor = Color3.new(1, 0, 0)
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
            text1.Text = "Rush: " .. math.round((me - rush).Magnitude * 10) / 10
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
            text2.Text = "Ambush: " .. math.round((me - ambush).Magnitude * 10) / 10
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
            if game.Workspace.SeekMoving.SeekRig:FindFirstChild("SeekPuddle") then
                game.Workspace.SeekMoving.SeekRig.SeekPuddle:Destroy()
            end
            if not game.Workspace.SeekMoving.SeekRig:FindFirstChild("HighlightA") then
                local hl = Instance.new("Highlight")
                hl.Name = "HighlightA"
                hl.Parent = game.Workspace.SeekMoving.SeekRig
                hl.OutlineTransparency = 1
                hl.FillTransparency = 0.25
                hl.FillColor = Color3.new(1, 0, 0)
            end
            local seek = game.Workspace.SeekMoving.SeekRig.UpperTorso.Position
            local me = game.Workspace[playerName].HumanoidRootPart.Position
            text3.Text = "Seek: " .. math.round((me - seek).Magnitude * 10) / 10
            text3.BackgroundColor3 = Color3.new(1, 0, 0)
        end
    else
        text3.Text = "No Seek"
        text3.BackgroundColor3 = Color3.new(1, 1, 1)
    end
    if game.Workspace.CurrentRooms:FindFirstChild("50") then
        if game.Workspace.CurrentRooms["50"]:FindFirstChild("FigureSetup") then
            if game.Workspace.CurrentRooms["50"].FigureSetup:FindFirstChild("FigureRagdoll") then
                if not game.Workspace.CurrentRooms["50"].FigureSetup.FigureRagdoll:FindFirstChild("HighlightA") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = game.Workspace.CurrentRooms["50"].FigureSetup.FigureRagdoll
                    hl.OutlineTransparency = 1
                    hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(1, 0, 0)
                end
            end
        end
        if game.Workspace.CurrentRooms["50"]:FindFirstChild("Assets") then
            for i, o in pairs(game.Workspace.CurrentRooms["50"].Assets:GetChildren()) do
                if o.Name == "Super Cool Bookshelf With Hint Book" and o:FindFirstChild("LiveHintBook") then
                    if not o.LiveHintBook:FindFirstChild("HighlightA") then
                        local hl = Instance.new("Highlight")
                        hl.Name = "HighlightA"
                        hl.Parent = o.LiveHintBook
                        hl.OutlineTransparency = 1
                        hl.FillTransparency = 0.25
                        hl.FillColor = Color3.new(0, 0, 1)
                    end
                end
            end
        end
    end
    wait()
end
