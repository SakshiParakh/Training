def divide(dividend, divisor = 1)
   dividend / divisor

rescue Exception => e
  p "exception occured"
  p e
end
p divide(10,0)
