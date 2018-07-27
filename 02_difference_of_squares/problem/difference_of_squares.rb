class Squares
attr_accessor :n

  def initialize(n)
    @n = n
    @numbers = []
    build_vector
  end
  
  def difference
    square_of_sum - sum_of_squares
  end

  def build_vector
    @n.times do |num|
      @numbers << num+1
    end
  end

  def square_of_sum
    @numbers.sum**2
  end

  def sum_of_squares
    result = @numbers.map do|num|
      num**2
    end
    result.sum
  end
end
x = 100

 p Squares.new(x).difference

