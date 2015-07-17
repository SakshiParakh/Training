retries = 0
begin 
  puts "enter file patrh to display"
  input_path = gets.chomp

  retries += 1
  File.read(input_path)

rescue
  p "exception occured"
  retry if (retries < 3)
end

