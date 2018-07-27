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
    @n.times{|num| @numbers << num+1}
  end

  def square_of_sum
    @numbers.sum**2
  end

  def sum_of_squares
    @numbers.map{|num| num**2}.sum
  end
end
x = 10

 p Squares.new(x).difference

