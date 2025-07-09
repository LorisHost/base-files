getgenv()._Sys = {
    _V = 1.34,
    _S = function()
        local T = {
            _C = workspace.CurrentCamera,
            _P = game:GetService("Players"),
            _V = Vector2.new,
            _A = game:GetService("CollectionService"):GetTagged("Actor") or {},
            _R = math.random(70,130)/100,
            _H = {
                _F = false,
                _P = false,
                _A = true,
                _C = true
            }
        }

        function T:_G()
            for _,v in ipairs(getgc(true)) do
                if typeof(v) == "table" then
                    local success, cam = pcall(function()
                        return rawget(v,"Camera") or rawget(v,"CurrentCamera") or rawget(v,"_cam") or rawget(v,"cam")
                    end)
                    if success and typeof(cam) == "Instance" and cam:IsA("Camera") then
                        return cam
                    end
                end
            end
            return nil
        end

        function T:_F()
            for _,v in ipairs(getreg()) do
                if typeof(v) == "table" then
                    if rawget(v,"GetCamera") then
                        local success, cam = pcall(v.GetCamera,v)
                        if success and typeof(cam) == "Instance" and cam:IsA("Camera") then
                            return cam
                        end
                    elseif rawget(v,"CurrentCamera") then
                        local success, cam = pcall(function() return v.CurrentCamera end)
                        if success and typeof(cam) == "Instance" and cam:IsA("Camera") then
                            return cam
                        end
                    end
                end
            end
            for _,v in ipairs(workspace:GetDescendants()) do
                if v:IsA("Camera") and v.Enabled then
                    return v
                end
            end
            return self._C
        end

        function T:_U()
            self._C = self._H._C and (self:_G() or self:_F() or workspace.CurrentCamera) or self._C
            self._D = {}

            if self._H._P then
                for _,v in ipairs(self._P:GetPlayers()) do
                    if v.Character then
                        local p = v.Character:FindFirstChild("HumanoidRootPart") or v.Character:FindFirstChild("UpperTorso")
                        if p then
                            local s = self._C:WorldToViewportPoint(p.Position)
                            if s.Z > 0 then
                                table.insert(self._D,{
                                    _O = v,
                                    _X = s.X,
                                    _Y = s.Y,
                                    _Z = (self._C.CFrame.Position - p.Position).Magnitude
                                })
                            end
                        end
                    end
                end
            end

            if self._H._A and typeof(self._A) == "table" then
                for _,v in ipairs(self._A) do
                    local p = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("UpperTorso")
                    if p then
                        local s = self._C:WorldToViewportPoint(p.Position)
                        if s.Z > 0 then
                            table.insert(self._D,{
                                _O = v,
                                _X = s.X,
                                _Y = s.Y,
                                _Z = (self._C.CFrame.Position - p.Position).Magnitude
                            })
                        end
                    end
                end
            end

            return self._D
        end

        function T:_N(f)
            local center = self._V(self._C.ViewportSize.X / 2, self._C.ViewportSize.Y / 2)
            local nearest, distance = nil, f or 2000
            for _,v in ipairs(self._D) do
                local dist = (self._V(v._X,v._Y) - center).Magnitude
                if dist < distance then
                    nearest, distance = v, dist
                end
            end
            return nearest
        end

        return T
    end
}

local _X = _Sys._S()
while task.wait(_X._R) do
    _X:_U()
end
