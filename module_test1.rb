module Privated
  def method_test
    "hi"
  end
end

class Ind
end

p = Ind.new
p.include Privated
p p.method_test
#p1 = Ind.new
#p p1.method_test
