local slot = player:spellSlot(0)

local input = {
  delay = 0.25,
  range = 950,
  radius = 180,
  speed = 2000,
  damage = function(obj)
    return 40 + (40 * slot.level) + (0.6 * player.totalAP)
  end
}

local invoke_action = function()
  local pos = vec3(res.pos.x, res.obj.y, res.pos.y)
  player:castSpell("pos", 1, pos)
end

local invoke_farm = function()
  local seg, obj = orb.farm.skill_farm_linear(input)
  if seg then
    player:castSpell("pos", 0, seg.endPos)
  end
end

return {input, invoke_action, invoke_farm}
