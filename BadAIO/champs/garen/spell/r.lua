local slot = player:spellSlot(3)

local input = {
  delay = 0.435,
  range = 400,
  radius = 0,
  damage = function(obj)
    return (150 * slot.level) --need to add enemy missing hp
  end
}

local invoke_action = function()
  if input.damage > res.obj.health then
    player:castSpell("obj", 3, res.obj)
  end
end

return {input, invoke_action}
