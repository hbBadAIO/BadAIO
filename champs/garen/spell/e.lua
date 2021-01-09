local slot = player:spellSlot(2)

local input = {
  delay = 0,
  radius = 325,
  range = 0,
  damage = function(obj)
    return (5 * slot.level) + ((0.40 + (0.025 * slot.level)) * player.totalAD)
  end
}

local invoke_action = function()
  player:castSpell("self", 0)
end

return {input, invoke_action}
