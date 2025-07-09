getgenv()._X = {
    _V = 2.2,
    _N = function()
        local T = {
            _S = {
                _P = game:GetService("Players"),
                _C = game:GetService("CollectionService"),
                _T = game:GetService("Teams"),
                _M = game:GetService("MarketplaceService"),
                _R = game:GetService("RunService")
            },
            _E = {},
            _F = {
                _P = true,
                _N = true,
                _B = false,
                _T = false,
                _H = true,
                _I = false,
                _V = true,
                _S = false
            },
            _D = math.random(25,60)/100,
            _R = math.random(1,10000),
            _C = loadstring(game:HttpGet("https://raw.githubusercontent.com/LorisHost/spathix/main/Libraries/SCamera.lua"))(),
            _L = {},
            _Q = {},
            _LT = 0
        }

        function T:_U()
            self._E = {}
            self._L = {}

            if self._F._P then
                for _, v in ipairs(self._S._P:GetPlayers()) do
                    if v.Character and (not self._F._T or v.Team ~= self._S._P.LocalPlayer.Team) then
                        local r = v.Character:FindFirstChild("HumanoidRootPart")
                            or v.Character:FindFirstChild("Torso")
                            or v.Character:FindFirstChild("UpperTorso")
                            or v.Character:FindFirstChild("Head")
                        if r then
                            local h = v.Character:FindFirstChildOfClass("Humanoid")
                            local sPos, vis = self._C:WorldToViewportPoint(r.Position)
                            local uname = v.Name
                            pcall(function()
                                local info = self._S._M:GetPlayerInfosAsync({v.UserId})[1]
                                if info and info.Username then uname = info.Username end
                            end)
                            local entry = {
                                _O = v,
                                _T = "P",
                                _P = r.Position,
                                _S = self._F._V and Vector2.new(sPos.X, sPos.Y) or nil,
                                _V = vis,
                                _H = h and h.Health or 100,
                                _M = uname,
                                _I = v.UserId,
                                _Q = os.clock()
                            }
                            table.insert(self._E, entry)
                            if self._F._I then self._L[v.UserId] = entry end
                        end
                    end
                end
            end

            if self._F._N then
                for _, v in ipairs(self._S._C:GetTagged("NPC") or {}) do
                    local r = v:FindFirstChild("HumanoidRootPart")
                        or v:FindFirstChild("Torso")
                        or v:FindFirstChild("UpperTorso")
                        or v:FindFirstChild("Head")
                    if r then
                        local h = v:FindFirstChildOfClass("Humanoid")
                        local sPos, vis = self._C:WorldToViewportPoint(r.Position)
                        table.insert(self._E, {
                            _O = v,
                            _T = "N",
                            _P = r.Position,
                            _S = self._F._V and Vector2.new(sPos.X, sPos.Y) or nil,
                            _V = vis,
                            _H = h and h.Health or 100,
                            _N = v.Name,
                            _A = v:GetAttribute("Aggro") or false,
                            _Q = os.clock()
                        })
                    end
                end
            end

            if self._F._B then
                for _, v in ipairs(workspace:GetChildren()) do
                    if v:GetAttribute("IsBody") then
                        local sPos, vis = self._C:WorldToViewportPoint(v.Position)
                        table.insert(self._E, {
                            _O = v,
                            _T = "B",
                            _P = v.Position,
                            _S = self._F._V and Vector2.new(sPos.X, sPos.Y) or nil,
                            _V = vis,
                            _C = v:GetAttribute("Color") or Color3.new(1, 1, 1),
                            _Q = os.clock()
                        })
                    end
                end
            end

            if self._F._S then
                for id, entry in pairs(self._Q) do
                    if os.clock() - entry._Q > 5 then
                        self._Q[id] = nil
                    end
                end
                for _, v in ipairs(self._E) do
                    local key = v._I or v._N or tostring(v._O)
                    if key then self._Q[key] = v end
                end
            end

            return self._E
        end

        function T:_A(p, r, t)
            local n = {}
            for _, v in ipairs(self._F._S and self._Q or self._E) do
                if (not t or v._T == t) and (v._P - p).Magnitude <= (r or 50) then
                    table.insert(n, v)
                end
            end
            return n
        end

        function T:_G(t, i)
            if i then
                return (self._F._I and self._L[i]) or (self._F._S and self._Q[i])
            end
            local n = {}
            for _, v in ipairs(self._F._S and self._Q or self._E) do
                if v._T == t then
                    table.insert(n, v)
                end
            end
            return n
        end

        function T:_W(p, r, t)
            local c = 0
            for _, v in pairs(self._F._S and self._Q or self._E) do
                if (not t or v._T == t) and (v._P - p).Magnitude <= r then
                    c += 1
                end
            end
            return c
        end

        function T:_H(i)
            if self._F._I and self._L[i] then return self._L[i]._H end
            if self._F._S and self._Q[i] then return self._Q[i]._H end
            for _, v in ipairs(self._E) do
                if v._I == i then return v._H end
            end
            return nil
        end

        function T:_M()
            self._S._R.Heartbeat:Connect(function()
                if os.clock() - (self._LT or 0) >= self._D then
                    self._LT = os.clock()
                    self:_U()
                end
            end)
        end

        return T
    end
}
