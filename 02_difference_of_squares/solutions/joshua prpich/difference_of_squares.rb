  # Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    arr = []
    num = @num
    while num > 0 do
      arr.push(num)
      num -= 1
    end
    add_numbers_inside_array(arr) * add_numbers_inside_array(arr)
  end
  
  def sum_of_squares
    arr = []
    num = @num
    while num > 0 do 
      arr.push(square(num))
      num -= 1
    end
    add_numbers_inside_array(arr)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
    def add_numbers_inside_array(arr)
      arr.inject(0){|sum,x| sum + x }
    end

    def square(num)
      num*num
    end
end