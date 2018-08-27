class Raindrops
  @master_factors = [3, 5, 7].freeze
  @outputs = %w[Pling Plang Plong].freeze

  def self.factors(number)
    (3..7).map { |n| n if (number % n).zero? }
  end

  def self.convert(number)
    string = ''
    factors_array = factors(number)
    @master_factors.each_with_index do |n, index|
      string += @outputs[index] if factors_array.include?(n)
    end
    string.empty? ? number.to_s : string
  end
end
