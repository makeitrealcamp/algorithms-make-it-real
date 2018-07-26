class Squares
	def initialize(num)
		@num=num
	end

	def square_of_sum
		recursive_sum(@num)**2
	end

	def sum_of_squares
		recursive_square_sum (@num)
	end

	def difference
		square_of_sum - sum_of_squares	
	end

private 
	def recursive_sum (num)
		return 1 if num <=1
		return num + recursive_sum(num-1)
	end

	def recursive_square_sum (num)
		return 1 if num <=1
		return num**2 + recursive_square_sum(num-1)
	end
end

