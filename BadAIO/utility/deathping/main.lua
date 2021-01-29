local function ping_idiots_on_death()
    for i = 0, objManager.allies_n - 1 do
        local allychamp = objManager.allies[i]
        if allychamp.isDead then
            ping.send(allychamp.pos, ping.MISSING_ENEMY)
        end
    end
end

cb.add(cb.tick, ping_idiots_on_death)
