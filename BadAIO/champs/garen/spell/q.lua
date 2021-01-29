local slot = player:spellSlot(0)

local input = {
  delay = 0,
  damage = function(obj)
    return (30 * slot.level) + (0.5 * player.totalAD)
  end
}

local invoke_action = function()
  player:castSpell("self", 0)
end

return {input, invoke_action, invoke_farm}
