local slot = player:spellSlot(3)

local input = {
  delay = 0.25,
  range = 650,
  radius = 0,
  damage = function(obj)
    return 100 + (75 * slot.level) + (0.75 * player.totalAP)
  end
}

local invoke_action = function()
  if input.damage > res.obj.health then
    player:castSpell("obj", 3, res.obj)
  end
end

return {input, invoke_action}
