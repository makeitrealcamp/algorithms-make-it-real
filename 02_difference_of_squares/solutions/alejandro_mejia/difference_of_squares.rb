class Squares
  def initialize(num)
    @num = num
    @array = []
    num.times{|i| @array[i] = i + 1}
  end

  def square_of_sum
    @array.inject(0){|sum, elem| sum + elem} ** 2
  end

  def sum_of_squares
    @array.inject(0){|sum, elem| sum += elem ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
