class Grains
  def self.square(num)
    raise ArgumentError.new("num must be between 1 and 64") if num < 1 || num > 64
    2 ** (num-1)
  end

  def self.total
    result = 1
    64.times do
      result *= 2
    end
    result-1
  end
end
