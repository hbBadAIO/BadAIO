local supported_champion = {
  ["Veigar"] = true,
  ["Garen"] = true
}

return {
  id = "badAIO",
  name = "Bad AIO",
  type = "Champion",
  load = function()
    return supported_champion[player.charName]
  end
}
