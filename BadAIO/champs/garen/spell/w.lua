local slot = player:spellSlot(1)

local input = {
  delay = 0,
  damage = function(obj)
    return 0
  end
}

local invoke_action = function()
  player:castSpell("self", 1)
end

return {input, invoke_action}
