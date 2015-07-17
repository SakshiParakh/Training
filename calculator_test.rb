require 'minitest/autorun'
require './calculator'

class CalculatorTest < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_should_add_two_integers
    @calculator.input1 = 1
    @calculator.input2 = 2
    assert_equal(@calculator.add, 3)
  end

  def test_should_add_two_floating_point_numbers
    @calculator.input1 = 1.5
    @calculator.input2 = 2.7
    assert_equal(@calculator.add, 4.2)
  end

  def test_should_rause_an_exception
    @calculator.input1 = 1
    @calculator.input2 = 0
    assert_raises(ZeroDivisionError){ @calculator.divide }
  end
end
