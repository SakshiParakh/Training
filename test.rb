chances = 5 
word_to_guess = dictionary; player_guess = "empty"
puts "Welcome to CowsandBulls\nGuess the word and win points"
chances.times do
    puts "Enter a #{word_to_guess.size } letter word you think is right"
      player_guess = gets.chomp
        if(word_to_guess == player_guess)
              puts "Congratulations You Win.\nYou score #{(chances -= 1)*10} points"
                  break
                    else
                          cow_count, bull_count = process_word(player_guess, word_to_guess)
                              puts "Sorry , wrong guess keep trying, hints: \n#{cow_count} cows and #{bull_count} bull\nchances left #{chances -= 1} "    
                                end 
end
puts "Chances over, Game Over\nThe word was #{word_to_guess}" if(word_to_guess != player_guess)


def dictionary
    word_bank = ["animal", "josh", "lion", "car", "cow", "bull"]
      word_play = word_bank[rand(word_bank.size)]
end

def process_word(player_guess, word_to_guess)
    cow_count = 0; bull_count = 0

      player_guess.chars.each_with_index do |letter, position|
            if(word_to_guess.chars.include?(letter))
                    cow_count = cow_count.succ if(word_to_guess.chars.index(letter) != position)
                          bull_count = bull_count.succ if(word_to_guess.chars.index(letter) == position)
                              end
              end

        return cow_count, bull_count
end

