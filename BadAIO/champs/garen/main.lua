local menu = module.load(header.id, "menu")

local q = module.load(header.id, "spell/q")
local w = module.load(header.id, "spell/w")
local e = module.load(header.id, "spell/e")
local r = module.load(header.id, "spell/r")

local function on_tick()
  if menu.e:get() and not orb.core.is_spell_locked() then
    e.invoke_action()
  end

  if menu.w:get() and not orb.core.is_spell_locked() then
    w.invoke_action()
  end

  if menu.q:get() and not orb.core.is_spell_locked() then
    q.invoke_action()
  end

  if menu.r:get() and not orb.core.is_spell_locked() then
    r.invoke_action()
  end
end

cb.add(cb.tick, on_tick)
