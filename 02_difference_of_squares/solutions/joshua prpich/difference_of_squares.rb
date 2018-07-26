# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
class Squares
  def self.square(num)
    num*num
  end

  def self.add_numbers_inside_array(arr)
    arr.inject(0){|sum,x| sum + x }
  end

  def self.square_of_sum(num)
    arr = []
    while num > 0 do
      arr.push(num)
      num -= 1
    end
    add_numbers_inside_array(arr) * add_numbers_inside_array(arr)
  end

  def self.sum_of_squares(num)
    arr = []
    while num > 0 do 
      arr.push(square(num))
      num -= 1
    end
    add_numbers_inside_array(arr)
  end

  def self.difference(num)
    square_of_sum(num) - sum_of_squares(num)
  end
end











