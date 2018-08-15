class Raindrops
  def self.to_string(number)
    return show_error unless number.is_a? Numeric
    string = ''
    string << 'Pling' if (number % 3) == 0
    string << 'Plang' if (number % 5) == 0
    string << 'Plong' if (number % 7) == 0
    string.empty? ? number.to_s : string
  end

  def self.show_error
    begin
      raise ArgumentError.new("Argumento inválido")
    rescue ArgumentError => e
      e.message
    end
  end
end
