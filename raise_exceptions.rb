class Student
  attr_accessor :name, :marks

  def initialize
    @name = ""
    @marks = 0
  end 

  def name_field
    name = gets.chomp 
  raise(InvalidNameError, "enter a valid name ") if(name.each_char is_a? Alphabet)
  raise(NoNameError, "Enter some name") if(name == "")
  end

  def mark_field
    marks = gets.chomp.to_i
  raise(NoMarksError, "Marks note entered") if(marks == 0)
  raise(InvlidMarkError, "invalid marks entered") if(marks > 100)
  end
end

s1 = Student.new
s1.mark_field
s1.name_field

