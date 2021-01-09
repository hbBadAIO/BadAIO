module.load(header.id, "champs/" .. player.charName:lower() .. "/main")
module.load(header.id, "utility/deathping/main")

chat.clear()
chat.add("BadAIO Loaded!", {color = "#8b0000", bold = true})
chat.print()
