class Grains
  def self.square(number)
    raise ArgumentError if number <= 0 || number > 64 || !(number.is_a? Integer)
    2**(number - 1)
  end

  def self.total
    (1..64).inject(0) { |sum, exponent| sum + square(exponent) }
  end
end
