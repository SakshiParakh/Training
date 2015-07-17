class A
  attr_accessor :instance
  @instance = 0
=begin  def instance_test
    @instance = "name"
    #p  @instance
    #p @@count = 1
   # A.class_test
=end  end
  def self.class_test
     @instance = "hello"
     p @instance
  end
end

class B < A
  @instance = 0
end


try = A.new
A.class_test
try2 = B.new
B.class_test


