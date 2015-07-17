class A
  attr_accessor :speed
  def initialize(speed)
    @speed = speed
  end
   def  self.race(*v)
     winner = v[0]
     p winner
     v.each do |racer|
       if(racer.speed) > winner.speed
         winner = racer
       end
     end
     p winner
   end

end

