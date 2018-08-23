class Grains
  SQUARES = 64

  def self.square(number)
    raise ArgumentError if number > SQUARES || number <= 0
    2 ** (number - 1)
  end

  def self.total
    (1..SQUARES).inject { |grains, number| grains += square(number) }
  end
end
