repeat wait() until game:IsLoaded() wait()
game:GetService("ScriptContext"):SetTimeout(3)
if hookmetamethod then
    local OldNameCall = nil
    OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
        local Args = {...}
        local Self = Args[1]
        if getnamecallmethod() == "Kick" and self.Name == game.Players.LocalPlayer  then
            return nil
        end
        if getnamecallmethod() == "Kick" then
            return nil
        end
        return OldNameCall(self, ...)
    end)
end
if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
if setfpscap then
    setfpscap(100)
end
if getconnections then
    for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
        v:Disable()
    end
    for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
        v:Disable()
    end
    for _,v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end
if hookfunction and gcinfo or collectgarbage then
    hookfunction((gcinfo or collectgarbage), function(...)
        return math.random(200,350)
    end)
end
if not getconnections then
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end) print("poopy exploit") end


pcall(function()
    if game.PlaceId == 5122568874 or game.PlaceId == 5122568155 or game.PlaceId == 5122567177 or game.PlaceId == 379614936 or  game.PlaceId == 5827139096 or game.PlaceId == 2664771962 or game.PlaceId == 866472074 or gamer.PlaceId == 5006801542 or game.PlaceId == 2664773504 or game.PlaceId == 860428890 then
        local OldNameCall
        OldNameCall = hookmetamethod(game, "__namecall", function(...)
            local Args={...}
            local Self = Args[1]
            if getnamecallmethod()=="FireServer" and (tostring(Self)=="clientkick" or tostring(Self)=="ginger" or tostring(Self)=="egg") then
                return wait(9e9)
            end
            if string.lower(getnamecallmethod())=="kick" and Self==game.Players.LocalPlayer then
                return wait(9e9)
            end
            return OldNameCall(...)
        end)
        for i,v in next, game:GetService("ReplicatedFirst"):GetChildren() do
            if v.Name:find("B.A") then
                v.Disabled = true
            end
        end
    end 
end)
