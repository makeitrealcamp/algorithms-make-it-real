class Grains
  MAX_SQUARES = 64

  class << self
    def square(number)
      raise ArgumentError if number <= 0 || number > 64

      2 ** (number - 1)
    end

    def total
      @_total ||= (1..MAX_SQUARES).to_a.inject(0) { |sum, sq| sum + square(sq) }
    end
  end
end
