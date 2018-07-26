class Raindrops
	def self.convert(num)
		result = ''				
		result += "Pling" if (num%3 == 0)
		result += "Plang" if (num%5 == 0)
		result += "Plong" if (num%7 == 0)
		return num.to_s if result== ''
		result
	end
end

