class Raindrops 
  attr_accessor :number

  def initialize(number)
   @number = number
  end
   
  def is_raining
    "#{pling}#{plang}#{plong}" != "" ? "#{pling}#{plang}#{plong}" : @number
  end

  def pling
    check_modulus(@number,3) ? "Pling" : ""
  end

  def plang
    check_modulus(@number,5) ? "Plang" : ""
  end

  def plong
    check_modulus(@number,7) ? "Plong" : ""
  end

  def check_modulus(number, factor)
     number%factor == 0
  end
end

weather = Raindrops.new(34)

puts weather.is_raining
