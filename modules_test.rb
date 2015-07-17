module Foo
  def module_level_method
    puts "Module level method"
  end
end

class Bar
  include Foo
end

Bar.new.module_level_method
