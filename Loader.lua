_G.Games = {
    ["Unknown"] = "???"
}

pcall(function()
    print("[?] Loader: Please wait until your character loads...")
    repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    print("[+] Loader: Loaded")
    print("[!] Loader: Executing the Loader")
    name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    matched = false
    for n, u in pairs(_G.Games) do
        if tostring(name):lower():match(n:lower()) then
            print("[+] Loader: Game Detected ✓")
            loadstring(game:HttpGet(u))()
            print("[!] Loader: Enjoy! The Script")
            matched = true
            break
        end
    end
    if not matched then
        print("[!] Loader: Unsupported Game: "..name)
        game.Players.LocalPlayer:Kick("Unsupported Game: "..name)
    end
end)
