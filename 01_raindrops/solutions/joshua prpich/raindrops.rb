class Raindrops
  def self.number_to_string(num)
    string_var = ""
    if (num%3 == 0) 
      string_var += "Pling"
    end
    if (num%5 == 0)
      string_var += "Plang"
    end
    if (num%7 == 0)
      string_var += "Plong"
    end
    if !(num%3 ==0 || num%5==0 || num%7==0)
      string_var = "#{num}"
    end
    string_var
  end
end

