class A
@@global = 0
  @instance = 0

  def set(value)
    @@global += value
    @instance = value
    p @instance
  end

end

class B < A
end

class C < A
end


a = A.new
a.set(100)
