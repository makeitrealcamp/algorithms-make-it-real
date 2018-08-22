class Grains
  MAX_SQUARES = 64

  class << self
    def square(number)
      raise ArgumentError if number <= 0 || number > MAX_SQUARES

      2 ** (number - 1)
    end

    def total
      @_total ||= (1..MAX_SQUARES).to_a.sum { |sq| square(sq) }
    end
  end
end
