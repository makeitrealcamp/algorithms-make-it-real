require 'minitest/autorun'
require_relative 'difference_of_squares'

# Common test data version: 1.1.0 7a1108b
class DifferenceOfSquaresTest < Minitest::Test
  def test_square_of_sum_1
    assert_equal 1, Squares.square_of_sum(1)
  end

  def test_square_of_sum_5
    assert_equal 225, Squares.square_of_sum(5)
  end

  def test_square_of_sum_100
    assert_equal 25_502_500, Squares.square_of_sum(100)
  end

  def test_sum_of_squares_1
    assert_equal 1, Squares.sum_of_squares(1)
  end

  def test_sum_of_squares_5
    assert_equal 55, Squares.sum_of_squares(5)
  end

  def test_sum_of_squares_100
    assert_equal 338_350, Squares.sum_of_squares(100)
  end

  def test_difference_of_squares_1
    assert_equal 0, Squares.difference(1)
  end

  def test_difference_of_squares_5
    assert_equal 170, Squares.difference(5)
  end

  def test_difference_of_squares_100
    assert_equal 25_164_150, Squares.difference(100)
  end
end
