local slot = player:spellSlot(1)

local input = {
  delay = 0.25,
  range = 900,
  radius = 112,
  damage = function(obj)
    return 50 + (50 * slot.level) + player.totalAP
  end
}

local invoke_action = function()
  local pos = vec3(res.pos.x, res.obj.y, res.pos.y)
  player:castSpell("pos", 1, pos)
end

return {input, invoke_action}
