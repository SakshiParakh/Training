class Person
  def name
   @name
  end

  def name=(name)
   @name = name
  end

  def set_name(new_value)
   name = new_value
   p name
  end

  def get_name
    name
  end
end

p1 = Person.new
p p1.name = 'Sakshi'
p p1.name

p1.set_name("parakh")
p p1.get_name
