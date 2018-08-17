class Grains
  def self.square(num)
    raise ArgumentError.new("num must be between 1 and 64") if num < 1 || num > 64
    result = 1
    2.upto(num).each do |x|
      result *= 2
    end
    result
  end

  def self.total
    result = 1
    2.upto(64) do |x|
      result+=self.square(x)
    end
    result
  end
end
