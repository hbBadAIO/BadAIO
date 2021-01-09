local menu = menu("badAIO", "Bad Veigar")

--Farm Section
menu:header("header_farm", "Farm")
menu:boolean("q_clear", "Use Q in lane clear", true)

--Combat Section
menu:header("header_core", "Combat")
menu:boolean("q", "Use Q", true)
menu:boolean("w", "Use W", true)
menu:boolean("e", "Use E", true)
menu:boolean("r", "Use R", true)

return menu
