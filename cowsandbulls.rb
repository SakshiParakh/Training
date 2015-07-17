randomword = ["four", "car", "cow" , "lion"]
word = randomword.sample
wordlength = word.size
splitword = word.split("") 
cowguess = {}
bullguess = {}
puts "Lets Play CowsandBulls"
puts "Guess the correct word and win 10 points"
puts "INSTRUCTIONS"
puts " You are provided with hints incase you have guessed the wrong word but are close :"
puts " number of cats indicate the letters present in the word but in wrong places"
puts " number of bulls indicate the letters present in the word and in right places"
puts "kindly enter #{wordlength} letter word"

numofguess = 0
wrongguess = 0
for i in 0..9
  cow = 0
  bull = 0
  puts "Enter the word you think is right"
  guessedword = gets.chomp
  numofguess += 1

  if(wordlength == guessedword.length)
    if(word == guessedword)
      puts "Congratulations You Win. You are rewarded with 10 points"
      break
    else
      guessedword = guessedword.split("")
      guessedword.each_with_index do |element, index|
        if (splitword.include?(element) && splitword.index(element) != index)
          #its a cow
          cow += 1
          cowguess = {"cows" =>  cow}
        elsif (splitword.include?(element) && splitword.index(element) == index)
          #its a bull
          bull += 1
          bullguess = {"bulls" => bull}
        end
      end
      if ( cow == 0 && bull == 0)
         wrongguess += 1
      end 
      puts "Sorry , wrong guess keep trying "
      puts " We provide you with hints though:"
      puts "#{cow} cows"
      puts "#{bull} bull"
      puts "Number of guesses left #{10 - numofguess}"

      if(wrongguess == 5)
        puts " you have more than 5 completely wrong guesses.Sorry better luck next time \n GAME OVER \n #{word} "
        break
      end
    end  
  else 
    puts "enter #{wordlength} letters of word "
  end
end
if( word != guessedword)
  puts "Oops, your chances are over \n GAME OVER . \n the word was #{word} "
end
