#class NameError < StandardError; end
#class InvalidInputError < StandardError; end


class CowsAndBulls
  attr_accessor :word, :guessed_word, :attempts, :history
  def initialize
    @attempts = 5
    @word = get_word
    @history = {}
  end

  def get_word
    word_list = []
    File.readlines("word.txt").each do |line|
      word_list << line.strip
    end
    @word = word_list.sample
 #   p @word
  end

  def get_guessed_word
    @guessed_word = gets.chomp
 #   p @guessed_word
  end

  def word_file_exists?
    File.exists?("word.txt") ? true : false
  end

  def word_file_empty?
    File.zero?("word.txt") ? true : false
  end

  def word_valid
    @word = get_word
    return true if(@word.match(/[a-zA-Z\s]/))
  end

  def match_found
    return true if(@guessed_word == @word)
  end

  def length_match
    return true if(@guessed_word.length == @word.length)
  end

  def count_cow_bull
    cow = 0
    bull = 0

    @guessed_word.each_char.with_index do |letter, index|
      next unless @word.include?(letter)
        @word[index] == letter ? bull += 1 : cow += 1
      end

    return cow, bull
  end

  def play
    @attempts = 5
    @attempts.times do
      new_attempt
    end
  end

  def game
    @attempts.times do
      puts "Enter a #{@word.size } letter word you think is right"
      get_guessed_word
      @attempts -= 1
      if(match_found)
        puts "Congratulations You Win.\nYou score #{(@attempts)*10}" 
        break
      elsif(length_match)
        result = count_cow_bull
        puts "Sorry , wrong guess keep trying, hints: \n#{result[0]} cows and #{result[1]} bull\nchances left #{@attempts}"
        @history[@attempts] = {"cows" => "#{result[0]}", "bulls" =>  "#{result[1]}", "word" => "#{@guessed_word}"}
      elsif(!length_match)
        p "you entered incorrect length\n chances left #{@attempts}"
      end

    end
    p "you lost" if(@word == @guessed_word)
  end

  def show_history
    puts "-------History-------\n"
    @history.each do |chance,hints|
      puts " chance #{5 - chance} and hints : #{hints} "
    end
  end

end


=begin
player = CowsAndBulls.new
begin
  puts "------------Welcome to CowsandBulls----------\nGuess the word and win points"
  player.get_word
  player.game
  player.show_history
  puts " Do you want you continue ? enter y or n "
  continue = gets.chomp
end until(continue == "n")
=end




=begin


    retries = 0
    begin
      chances = 5
      history = {}
      guessedword = nil
      chances.times do
        cow_count = 0; bull_count = 0
        puts "Enter a #{word.size } letter word you think is right"
        guessedword = gets.chomp
        retries += 1
        if(!guessedword.is_a?(String) || guessedword.match(Regexp.new(/[^[a-zA-Z\s]]/)) || guessedword.to_s.empty? )
          raise(NameError,"Invalid Name")
        end

        p "after rasing exception"
        chances -= 1

        if(word == guessedword)
          puts "Congratulations You Win.\nYou score #{(chances)*10}" 
          break
        else
          guessedword.each_char.with_index do |letter, index|
            next unless word.include?(letter)
            word[index] == letter ? bull_count += 1 : cow_count += 1
          end
        end

        history[chances] = {"cows" => "#{cow_count}", "bulls" =>  "#{bull_count}", "word" => "#{guessedword}"} 
        puts "Sorry , wrong guess keep trying, hints: \n#{cow_count} cows and     #{bull_count} bull\nchances left #{chances} "

      end
      puts "Chances over, Game Over\nThe word was #{word}" if(word != guessedword)
      puts "-------History-------\n"
      history.each do |chance,hints|
        puts " chance #{5 - chance} and hints : #{hints} "
      end

      puts " Do you want you continue ? enter y or n "
      continue = gets.chomp
      raise(InvalidInputError,"invalid input") if(continue.match(Regexp.new(/[^[y|n\s]]/)))

    rescue NameError => e
      p e.message
      p "enter valid name"
    rescue InvalidInputError => e
      p e.message
      p "enter valid input"
      continue = gets.chomp
      raise(InvalidInputError,"invalid input") if(continue.match(Regexp.new(/[^[y|n\s]]/)))
    end until (continue == "n")

=end
