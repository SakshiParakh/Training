class Student
  def hello 
    p "hello"
  end
  
  def self.hello 
    p self
   # p super
  end
end

Student.hello
p Student.new.hello

