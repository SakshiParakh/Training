def set_config(chances = 5, dictionary = nil, player_name = "guest")
  return "chances is a invalid type" unless chances.is_a? Integer
  return "dictionary is a invalid type" unless (dictionary.is_a?(Array) || dictionary.is_a?(NilClass))
  return "player name is a invalid type" unless player_name.is_a? String
  config = {chances: chances, dictionary: dictionary, playername: player_name}
end

