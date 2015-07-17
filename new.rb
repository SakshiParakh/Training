class ValueError < StandardError; end
def test
  name = gets.chomp
  value = "str1"
  # raise(NameError, "inbalcid name") if !name.is_a?(String) || name.match(Regexp.new(/[^[a-zA-Z\s]]/))
  # raise(ValueError, "invalid value") if value != "str"

  raise NameError, 'invalid name' if !name.is_a?(String) || name.match(Regexp.new(/[^[a-zA-Z\s]]/))
  raise ValueError, 'invalid value' if value != "str"
rescue NameError => name_error
  p "Name error: #{name_error}"
  p "wewer"
rescue ValueError => value_error
  p "Value error: #{value_error}"
end

test
