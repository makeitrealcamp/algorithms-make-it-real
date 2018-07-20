class Raindrops
  def self.convert number
    string = ''

    string += 'Pling' if (number % 3).zero?
    string += 'Plang' if (number % 5).zero?
    string += 'Plong' if (number % 7).zero?
    return number.to_s if string.empty?

    string
  end
end
