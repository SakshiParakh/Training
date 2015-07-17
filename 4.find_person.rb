=begin
  rule :
    positional arguments should come before keyword arguments
      a. within positional argumnet
        i) in case of a default positional argument, it should always come before
           positional splat
        ii) mandtory and splat positional could be rearranged anyway
      b. within keyword argument
        i)  a splat keyword argument cannot come before a mandatory or an default 
            keyword argument
        ii) mandatory and default arguments could be rearranged anyway
=end

def find_person(name, city = "Pune", *mobile_no , gender:, days: "lost today"  ,**relatives)
  person_info = {name: name, city: city, mobile: mobile_no}
  person_info = {gender: gender, days: days}
  person_info.merge!(relatives)
  print find_person
end


  
