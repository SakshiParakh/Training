require 'io/console'
username = gets.chomp
password = STDIN.noecho(&:gets)
puts password

