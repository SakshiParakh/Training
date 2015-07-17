class NoEntryError < StandardError; end
class InvalidMembersError < StandardError; end
class Vehicle
  @@distance = 1000
  attr_accessor :name, :fuel, :accessories, :top_speed
  def initialize(name,fuel = "petrol/diesel/gas/manpower", accessories = "seats and driving tools", top_speed = 50)
    @name = name
    @fuel = fuel
    @accessories = accessories
    @top_speed = top_speed
  end


  def self.race(*vehicles)
    raise NoEntryError, "no vehicles for the race" if(vehicles.empty? || vehicles.count == 1)
    winner = vehicles.sort!{|racer1,racer2| racer2.top_speed <=> racer1.top_speed}
    finalwinner =  winner.select{ |racer| winner[0].top_speed == racer.top_speed}
    finalwinner.each{ |winner| p  winner.name}
  end

  def self.group_time(group)
    result = 0
    group.each do |racer|
      result += (@@distance/group.count)/(racer.top_speed)
    end
    result
  end

  def self.relay(*vehicles_group)
    p "default distance or enter"
    input = gets.chomp
    if(input != "default")
      p "enter the distance of the race"
      @@distance = gets.chomp.to_i
    end

    winner = vehicles_group.sort {|group1,group2|
      raise InvalidMembersError, "members not equal" if(group1.count != group2.count)
      group_time(group1) <=> group_time(group2)
    }
    winner = winner.select{ |group| group_time(winner[0]) == group_time(group)}
    winner.each do |group|
      group.each do |racer|
        p racer.name
      end
    end

  rescue InvalidMembersError => e
    p e.message
  end


=begin
    vehicles_group.each do |group|
      group_time = 0
      group.each do |racer|
      group_time += (@distance/2)/(racer.top_speed)
      end
      best_time = group_time if(group_time > best_time) 
      winner = group
    end
    winner.each {|racer| p racer.name}
  end 
=end

  def fly 
    p "yes"
  end

  def fire
    p "yes"
  end

  def reverse
    p "yes"
  end

  def covered
    p "yes"
  end

  def autopilot
    p "yes"
  end
end

class ByRoad < Vehicle
  def initialize(name, fuel = "petrol/diseal", accessories = "seats, gears,windows", top_speed = 50)
    super
    @means = "by road"
  end

  def fly 
    p "no"
  end

  def fire
    p "no"
  end

end

class ByAir < Vehicle
  def initialize(name, fuel = "petrol/gas", accessories = "seats,window,parachutes", top_speed = 250)
    super
    @means = "by air"
  end

  def reverse 
    p "no"
  end

end

class ByWater < Vehicle
  def initialize(name, fuel = "energy sources", accessories = "lifejacket/oxygenmask/rowing", top_speed = 20)
    super
    @means = "by water"
  end

  def fly
    p "no"
  end

  def fire
    p "no"
  end

  def reverse
    p "no"
  end
end

class FourWheel < ByRoad
  def autopilot
    p "no"
  end
end

class ThreeWheel < ByRoad
  def reverse 
    p "no"
  end

  def autopilot
    p "no"
  end
end

class TwoWheel < ByRoad
  def reverse 
    p "no"
  end

  def covered
    p "no"
  end

  def autopilot
    p "no"
  end
end

class Car < FourWheel
  def initialize(name,fuel = "petrol/diseal", accessories = "seats, gears,windows,sunroofs", top_speed = 100)
    super
    @sitting_capacity = 4

  end
end

class Bus < FourWheel
  def initialize(name,fuel = "diseal", accessories = "seats, gears,windows,carriers", top_speed = 70)
    super
    @sitting_capacity = 60
  end
end

class Van < FourWheel
  def initialize(name,fuel = "diseal", accessories = "seats, gears,windows,radio", top_speed = 90)
    super
    @sitting_capacity = 15
  end
end

class Googlecar < FourWheel
  def initialize(name,fuel = "petrol", accessories = "seats, gears,windows", top_speed = 50)
    super
    @sitting_capacity = 3
  end

  def autopilot
    p "yes"
  end
end


class Rickshaw < ThreeWheel
  def initialize(name, fuel = "gas", accessories = "seats", top_speed = 45)
    super
    @sitting_capacity = 3
  end
end

class Bullockcart < ThreeWheel
  def initialize(name, fuel = "manpower", accessories = "ropes, wooden planks", top_speed = 20)
    super
    @sitting_capacity = 2
  end

  def covered 
    p "no"
  end
end

class Bicycle < TwoWheel
  def initialize(name, fuel = "manpower", accessories = "peddle", top_speed = 25)
    super
    @sitting_capacity = 1
  end
end 

class Motorbike < TwoWheel
  def initialize(name, fuel = "petrol", accessories = "gears", top_speed = 65)
    super
    @sitting_capacity = 2
  end
end 

class Airoplane < ByAir
  def initialize(name, fuel = "gas", accessories = "parachutes", top_speed = 260)
    super
    @sitting_capacity = 80
  end

  def fire
    p "no"
  end
end 

class Rocket < ByAir
  def initialize(name, fuel = "thermal energy", accessories = "suits", top_speed = 300)
    super
    @sitting_capacity = 6
  end
end

class Helicopter < ByAir
  def initialize(name, fuel = "petrol", accessories = "climbing ropers", top_speed = 170)
    super
    @sitting_capacity = 3
  end

  def fire
    p "no"
  end
end 

class Ship < ByWater
  def initialize(name, fuel = "turbine energy", accessories = "lifejackets", top_speed = 45)
    super
    @sitting_capacity = 70
  end

  def covered
    p "no"
  end
end 

class Submarine < ByWater
  def initialize(name, fuel = "thermal energy", accessories = "oxygen mask", top_speed = 20)
    super
    @sitting_capacity = 35
  end
end

class Boat < ByWater
  def initialize(name, fuel = "manpower", accessories = "rowying", top_speed = 10)
    super
    @sitting_capacity = 4
  end

  def autopilot
    p "no"
  end

  def covered
    p "no"
  end
end 

ferrari = Car.new("ferrari")
ashok = Bus.new("ashokleyland")
ford = Car.new("ford")
hero = Bicycle.new("herobike")
#hero.top_speed = 100
ashok.top_speed = 100
Vehicle.race(ferrari)
Vehicle.relay([ferrari, hero], [ashok,ford])

