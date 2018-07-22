class Raindrops 
  attr_accessor :number

  def initialize(number)
   @number = number
  end
   
  def is_raining
    "#{pling}#{plang}#{plong}"
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
    if number%factor == 0
      true
    else
      false
    end
  end
end

weather = Raindrops.new(35)

puts weather.is_raining