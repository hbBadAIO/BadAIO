local menu = module.load(header.id, "menu")

local function stream_switcher()
    if (game.time > 30) and (game.time < 30.5) then
        local result =
            network.easy_post(
            function(http_status_code, data, data_len)
                print(http_status_code, data, data_len)
            end,
            "127.0.0.1:5000/setscene",
            '{"scene":"league_ingame"}'
        )
        chat.add("Scene Swapped to in game!", {color = "#ff0084"})
        chat.print()
    end
    if (objManager.nexus[TEAM_ALLY].isDead == true) or (objManager.nexus[TEAM_ENEMY].isDead == true) then
        print("nexus dead")
        local result =
            network.easy_post(
            function(http_status_code, data, data_len)
                print(http_status_code, data, data_len)
            end,
            "127.0.0.1:5000/setscene",
            '{"scene":"league_outgame"}'
        )
        chat.add("Scene Swapped to in game!", {color = "#ff0084"})
        chat.print()
    end
end

cb.add(cb.tick, stream_switcher)
