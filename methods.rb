def append(arg1, arg2)
  return arg1.to_s + arg2 if (!arg1.is_a?(String) && !arg2.is_a?(Numeric))
  return arg1 + arg2.to_s if (!arg2.is_a?(String) && !arg1.is_a?(Numeric))
  arg1 + arg2
end

