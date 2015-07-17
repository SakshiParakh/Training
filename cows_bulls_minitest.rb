require 'minitest/autorun'
require './cowbull_effective'

class ConfigFile < Minitest::Test

  def setup
    @test_player = CowsAndBulls.new
  end

  def test_file_exist
    assert_equal(true, @test_player.word_file_exists?)
  end

  def test_file_not_empty
    assert_equal(false, @test_player.word_file_empty?)
  end

  def test_if_word_valid
    assert_equal(true, @test_player.word_valid)
  end

end

class GamePlay < Minitest::Test

  def setup
    @test_player = CowsAndBulls.new
  end

  def test_word_match
    @test_player.guessed_word = "sakshi"
    @test_player.word = "sakshi"
    assert_equal(true, @test_player.match_found)
  end

  def test_word_length
    @test_player.guessed_word = "sakshi"
    @test_player.word = "saloni"
    assert_equal(true, @test_player.length_match)
  end

end

class CalculateCowBull < Minitest::Test

  def setup
    @test_player = CowsAndBulls.new
  end

  def test_if_cow_bull_count_correct
    @test_player.guessed_word = "sakshi"
    @test_player.word = "saloni"
    assert_equal([1,3], @test_player.count_cow_bull)
  end

end
