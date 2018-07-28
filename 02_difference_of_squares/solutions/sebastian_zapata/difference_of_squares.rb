class Squares
  def initialize(number)
    @number = number
  end

  # Since I want to avoid iteration check this link to understand the formulas
  # used for the calculation of both methods
  # https://brilliant.org/wiki/sum-of-n-n2-or-n3/
  def square_of_sum
    @_square_of_sum ||= sum ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= sum * (2 * @number + 1 ) / 3
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def sum
    @number * (@number + 1) / 2
  end
end
