module Superman
  def fly
    "i have robe"
  end
end

module Spiderman
  def fly
  #  "i have spiderswebs"
  super
  end
end

module Batman
  def fly 
  #  "i am the best "
  super
  end
end

class Human
  include Superman
  extend Spiderman
  extend Batman
end

p Human.new.fly
p Human.fly
