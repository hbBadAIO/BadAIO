local slot = player:spellSlot(2)

local input = {
  delay = 0.25,
  range = 700,
  radius = 375,
  damage = function(obj)
    return 0
  end
}

local invoke_action = function()
  local pos = vec3(res.pos.x, res.obj.y, res.pos.y)
  player:castSpell("pos", 2, pos)
end

return {input, invoke_action}
