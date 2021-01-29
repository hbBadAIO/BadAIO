local menu = module.load(header.id, "menu")

local function stream_switcher()
    args = {}
    args["method"] = "POST"
    args["data"] = {}
    if game.time == 30 then
        args["data"]["scene"] = "league_ingame"
        network.send("127.0.0.1:5000/setscene", args)
    end
    if (obj.Manager.nexus[TEAM_ALLY].isDead == true) or (obj.Manager.nexus[TEAM_ENEMY].isDead == true) then
        args["data"]["scene"] = "league_outgame"
        network.send("127.0.0.1:5000/setscene", args)
    end
end

cb.add(cb.tick, stream_switcher)
