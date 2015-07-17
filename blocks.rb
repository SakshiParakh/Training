def calculation(a, b, operation)                         #explicit calling of a block
  operation.call(a, b)
end
p calculation(5, 6, lambda {|a, b| a + b})

def calculation2(a, b)                                   #implicit calling of a block
  yield(a, b)
end

p calculation2(5,7){|a,b| a + b }

def gen_times(factor)
  return Proc.new{|n| n * factor}
end

times3 = gen_times(3)
p times3.call(6)
p times3.call(times3.call(6))

