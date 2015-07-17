puts " MENU  
       PIZZA PLACES AND THERE RATES
       a. Pizza Hut
       b. Dominoes with discount
       c. Papa Jones if gone to pizza hut or dominoes only
       select option "

$visited = "places visited"
begin
  option = gets.chomp!
  print option
  case option
  when "a"
    puts " Number of people for dining"
    num = gets.to_i()
    rates = num * 350
    puts " rate is #{rates} "
    $visited = "pizzahut"
  when "b" 
    puts " Number of people for dining"
    num = gets.to_i()
    rates = num * 400
    discount = 220
    rates -= discount
    puts " rate is #{rates} "
    $visited<<"dominoes"
  when "c"
    if $visited =~ /pizzahut|dominoes/
      puts " you can have in papa jones"
    else 
      puts " you can't have in papa jones"
    end
  else 
    puts " enter correct option "
    flag = "n"
  end 
end while (i = 1 )

